Feature: Run Automation

Scenario: Verify All Employee Operations
  * call read('../Action/input-data.feature@employee')
  * call read('../Action/employee.feature')