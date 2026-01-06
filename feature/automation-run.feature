Feature: Run Automation

Scenario: Verify All Calculator Operations
  * call read('../Action/input-data.feature@calculator')
  * call read('../Action/calculator.feature')
