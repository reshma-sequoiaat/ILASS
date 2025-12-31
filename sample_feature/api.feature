Feature:Sample API Test

  Scenario:Get users
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method get
    Then status 200