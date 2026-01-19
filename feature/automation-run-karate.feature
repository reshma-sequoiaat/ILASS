Feature: Automation Run Karate

  Scenario: Run Karate function
    * call read('../Action/karate-function.feature')
    * def idFromFunction = karate.get('userId')
    * def nameFromFunction = karate.get('userName')
    * print 'userId:', idFromFunction
    * print 'userName:', nameFromFunction