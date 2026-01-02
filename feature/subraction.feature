Feature: windows calculator

Scenario:
  * robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }

  * click('Clear')
  * click('Five')
  * click('Minus')
  * click('Two')
  * click('Equals')

  * def result = locate('#CalculatorResults').name
  * print result
  * match result contains '3'

  * screenshot()
