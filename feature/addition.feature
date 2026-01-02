Feature: windows calculator

Scenario:Add two numbers
* robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
* click('Clear')
* click('Nine')
* click('Plus')
* click('Two')
* click('Equals')

* def result = locate('#CalculatorResults').name
* print result
* match result contains '11'
* screenshot()