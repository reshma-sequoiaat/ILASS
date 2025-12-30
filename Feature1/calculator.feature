Feature: Calculator Subtraction using Robot

Scenario: Addition two numbers using click()
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton')
    * click('#num5Button')
    * click('#plusButton')
    * click('#num2Button')
    * click('#equalButton')
    * match locate('#CalculatorResults').name == 'Display is 7'
    * screenshot()

Scenario: Subtract two numbers using click()
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton')
    * click('#num5Button')
    * click('#minusButton')
    * click('#num2Button')
    * click('#equalButton')
    * match locate('#CalculatorResults').name == 'Display is 3'
    * screenshot()

Scenario: Multiply two numbers using click()
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton') 
    * click('#num5Button')
    * click('#multiplyButton')
    * click('#num2Button')
    * click('#equalButton')
    * match locate('#CalculatorResults').name == 'Display is 10'
    * screenshot()
Scenario: Divide two numbers using click()
    * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
    * click('#clearButton')
    * click('#num8Button')
    * click('#divideButton')
    * click('#num2Button')
    * click('#equalButton')
    * match locate('#CalculatorResults').name == 'Display is 4'
    * screenshot()