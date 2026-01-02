@ignore
Feature: Calculator Test Data Repository

  @data_addition
  Scenario: 
    * def data = { num1: 'num5Button', operator: 'plusButton', num2: 'num2Button', expected: '7' }

  @data_subtraction
  Scenario: 
    * def data = { num1: 'num5Button', operator: 'minusButton', num2: 'num2Button', expected: 'Display is 3' }

  @data_multiplication
  Scenario: 
    * def data = { num1: 'num5Button', operator: 'multiplyButton', num2: 'num2Button', expected: 'Display is 10' }

  @data_division
  Scenario: 
    * def data = { num1: 'num8Button', operator: 'divideButton', num2: 'num2Button', expected: '4' }