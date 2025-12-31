Feature: Calculator Actions using Robot

Scenario: calculate
    * def num1 = __arg.num1
    * def operator = __arg.operator
    * def num2 = __arg.num2
    * def expected = __arg.expected

    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton')
    * click(num1)
    * click(operator)
    * click(num2)
    * click('#equalButton')
    * match locate('#CalculatorResults').name == expected
    * screenshot()
