Feature: Windows Calculator - Division

Scenario: Divide two numbers
* robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
* click('Clear')
* click('Eight')
* click('Divide by')
* click('Two')
* click('Equals')
* match locate('//text{}').name == 'Display is 4'
* screenshot()
