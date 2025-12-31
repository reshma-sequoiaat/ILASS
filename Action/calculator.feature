Feature: Calculator Actions using Robot

Scenario: calculate
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton')
    * click(num1)
    * click(operator)
    * click(num2)
    * click('#equalButton')
    * match locate('#CalculatorResults').name == expected
    * screenshot()
