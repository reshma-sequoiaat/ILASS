Feature: Automation Run Date Format

  Scenario: Verify that the automation run date is displayed in the correct format
    
    * def logData = read('../test-inputs/log.txt')
    * def logJson = karate.fromString(logData)
    * call read('../Action/date-format-check.feature') { log: '#(logJson)' }
