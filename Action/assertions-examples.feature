Feature: Validate Cat Breeds API

Background:
  * url 'https://catfact.ninja'


Scenario: Get list of cat breeds - basic validations

  Given path 'breeds'
  When method GET

  # Assertion1: Status code
  Then status 200             

  # Assertion2: Response existence & type
  And match response != null
  And match response.data == '#array'

  # Assertion3: Conditional assertion
  And assert response.data.length > 0


Scenario: Validate schema of first breed

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion4: Schema validation
  And match response.data[0] contains
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

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion5: Conditional filtering
  * def usBreeds = karate.filter(response.data, function(x){ return x.country == 'United States' })
  * assert usBreeds.length > 0



Scenario: Pagination validation

  Given path 'breeds'
  And param limit = 5
  When method GET
  Then status 200

  # Assertion6: Collection size
  And assert response.data.length == 5



Scenario: Response time validation

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion7: Performance
  And assert responseTime < 2000



Scenario: Validate response headers

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion8: Header assertion
  And match header Content-Type contains 'application/json'



Scenario: Validate each element in response array

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion9: match each (collection validation)
  And match each response.data contains
  """
  {
    breed: '#string',
    country: '#string'
  }
  """



Scenario: Negative assertion - invalid limit

  Given path 'breeds'
  And param limit = -1
  When method GET

  # Assertion10: Negative status
  Then assert responseStatus == 400 || responseStatus == 404


Scenario: Regex validation for breed name

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion11: Regex assertion
  And match response.data[0].breed == '#regex ^[A-Za-z ]+$'



Scenario: Validate presence and non-null fields

  Given path 'breeds'
  When method GET
  Then status 200

  # Assertion12: Presence & not null
  And match response.data[0].breed == '#present'
  And match response.data[0].country == '#notnull'
