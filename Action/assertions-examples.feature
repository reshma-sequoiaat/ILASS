Feature: Validate Cat Breeds API

Background:
  * url catBreedsUrl

Scenario: Get list of cat breeds - basic validations
  * method get
  * status 200

  * match response != null
  * match response.data == '#array'
  * assert response.data.length > 0

Scenario: Validate schema of first breed
  * method get
  * status 200

  * match response.data[0] contains
    """
    {
      breed: '#string',
      country: '#string',
      origin: '#string',
      coat: '#string',
      pattern: '#string'
    }
    """

Scenario: Validate specific field values using filtering
  * method get
  * status 200

  * def usBreeds = karate.filter(response.data, function(x){ return x.country == 'United States' })
  * assert usBreeds.length > 0

Scenario: Pagination validation
  * param limit = 5
  * method get
  * status 200

  * assert response.data.length == 5

Scenario: Response time validation
  * method get
  * status 200

  * assert responseTime < 2000

Scenario: Validate response headers
  * method get
  * status 200

  * match header Content-Type contains 'application/json'

Scenario: Validate each element in response array
  * method get
  * status 200

  * match each response.data contains
    """
    {
      breed: '#string',
      country: '#string'
    }
    """
Scenario: Negative assertion - invalid limit
  * param limit = -1
  * method get

  * assert responseStatus == 400 || responseStatus == 404


Scenario: Regex validation for breed name
  * method get
  * status 200

  * match response.data[0].breed == '#regex ^[A-Za-z ]+$'


Scenario: Validate presence and non-null fields
  * method get
  * status 200

  * match response.data[0].breed == '#present'
  * match response.data[0].country == '#notnull'
