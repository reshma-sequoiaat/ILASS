Feature: Run Calculator Automation using CSV

Scenario: Verify Calculator Operations using CSV
  * def testData = read('../test-inputs/calculator-data.csv')
  * call read('../Action/calculator.feature')

