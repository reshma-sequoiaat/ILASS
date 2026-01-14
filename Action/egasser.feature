Feature: Validate Cat Breeds API

  Background:
    * url 'https://catfact.ninja'

  Scenario: Get list of cat breeds - basic validations
    Given path 'breeds'
    When method GET
    #Assertion1
    Then status 200             

    #Assertion2: match
    And match response != null
    And match response.data == '#array'

    #Assertion2: Conditional
    And assert response.data.length > 0

  Scenario: Validate schema of first breed
    Given path 'breeds'
    When method GET
    Then status 200

    # Assertion4: schema validation
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

  Scenario: Validate specific field values using conditional assertions
    Given path 'breeds'
    When method GET
    Then status 200
    * def usBreeds = karate.filter(response.data, function(x){ return x.country == 'United States' })
    * assert usBreeds.length > 0


  Scenario: Pagination validation
    Given path 'breeds'
    And param limit = 5
    When method GET
    Then status 200
    And assert response.data.length == 5

  Scenario: Response time validation
    Given path 'breeds'
    When method GET
    Then status 200

    # Assertion5: Performance
    And assert responseTime < 2000
