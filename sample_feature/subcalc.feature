Feature: windows calculator

Scenario:
* robot { window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500 }
* click('Clear')
* click('Five')
* click('Minus')
* click('Two')
* click('Equals')
* match locate('//text{'three'}'').name == 'Display is 3'
* screenshot()