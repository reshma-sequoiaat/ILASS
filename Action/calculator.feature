Feature: Calculator Actions

@setup
Scenario: Setup Calculator
  * def inputs = testData
Scenario Outline: execute
    * robot { window: 'Calculator', fork: 'calc', highlight: true }
    * click('#clearButton')
    * click('#'+ First)
    * click('#' + Operator)
    * click('#' + Second)
    * click('#equalButton')

    * match locate('#CalculatorResults').name contains Expected
    * screenshot()
  
  Examples:
    | karate.setup().inputs |