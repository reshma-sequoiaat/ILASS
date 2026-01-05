Feature: Run Automation

Scenario Outline: Verify All Calculator Operations
  * call read('../Action/calculator.feature')

Examples:
  | read('../Action/calculator-data.csv') |
