Feature: Windows Calculator - Multiplication

Scenario: Multiply two numbers
* robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
* click('Clear')
* click('Eight')
* click('Multiply by')
* click('Two')
* click('Equals')

* def result = locate('#CalculatorResults').name
* print result
* match result contains '16'
* screenshot()
