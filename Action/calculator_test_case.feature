Feature: Windows Calculator

Scenario: Add two numbers
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
  * click('Clear')
  * click('Nine')
  * click('Plus')
  * click('Two')
  * click('Equals')
  * def result = locate('#CalculatorResults').name
  * print result
  * match result == '11'
  * screenshot()

Scenario: Subtract two numbers
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
  * click('Clear')
  * click('Five')
  * click('Minus')
  * click('Two')
  * click('Equals')
  * def result = locate('#CalculatorResults').name
  * print result
  * match result == '3'
  * screenshot()

Scenario: Multiply two numbers
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
  * click('Clear')
  * click('Eight')
  * click('Multiply by')
  * click('Two')
  * click('Equals')
  * def result = locate('#CalculatorResults').name
  * print result
  * match result == '16'
  * screenshot()

Scenario: Divide two numbers
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
  * click('Clear')
  * click('Eight')
  * click('Divide by')
  * click('Two')
  * click('Equals')
  * def result = locate('#CalculatorResults').name
  * print result
  * match result == '4'
  * screenshot()
