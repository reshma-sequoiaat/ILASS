Feature: Calculator Actions

  @calculate
  Scenario: execute
    * robot { window: 'Calculator', fork: 'calc', highlight: true }
    * click('#clearButton')
    * click('#' + num1)
    * click('#' + operator)
    * click('#' + num2)
    * click('#equalButton')
    
    # Assertion Options
    * match locate('#CalculatorResults').name contains expected
    * screenshot()