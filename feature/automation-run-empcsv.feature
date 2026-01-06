Feature: Run Employee Automation using CSV

Scenario: Verify employee Calculations using CSV
  * def Employees = read('../test-inputs/employee.csv')
  * call read('../Action/employee.feature')