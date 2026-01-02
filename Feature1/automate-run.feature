Feature: Run Automation

  Scenario Outline: Verify All Calculator Operations
    # Path is relative to this file: go up one level, then into Action
    * def testData = __row
    * call read('../Action/calculator.feature') testData

    Examples:
      | read('../Action/calculator-data.csv') |