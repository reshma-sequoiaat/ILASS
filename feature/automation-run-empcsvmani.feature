Feature: Run Automation

  Scenario: Manipulate employee CSV data
    * def Employees = read('../test-inputs/employee.csv')
    * call read('../Action/csvemplmani.feature')