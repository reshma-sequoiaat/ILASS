Feature: Run Automation

Scenario: Execute Calculator Scenarios

    * call read('../Action/calculator.feature') { num1: '#num5Button', operator: '#plusButton', num2: '#num2Button', expected: 'Display is 7' }
    * call read('../Action/calculator.feature') { num1: '#num5Button', operator: '#minusButton', num2: '#num2Button', expected: 'Display is 3' }
    * call read('../Action/calculator.feature') { num1: '#num5Button', operator: '#multiplyButton', num2: '#num2Button', expected: 'Display is 10' }
    * call read('../Action/calculator.feature') { num1: '#num8Button', operator: '#divideButton', num2: '#num2Button', expected: 'Display is 4' }