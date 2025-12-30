Feature: Windows Calculator - Division

Scenario: Divide two numbers
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }

  * click('Clear')
  * click('Eight')
  * click('Divide by')
  * click('Two')
  * click('Equals')

  * def result = locate('#CalculatorResults').name
  * print result
  * match result contains '4'

  * screenshot()
