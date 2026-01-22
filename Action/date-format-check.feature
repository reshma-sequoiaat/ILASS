Feature: Date Format Validation

Scenario: Perform date format check
    * def datePattern = '^\\d{4}-\\d{1,2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}\\.\\d+[-+]\\d{2}:\\d{2}$'

    * match log.RunStart == '#regex ' + datePattern
    * match log.RunEnd == '#regex ' + datePattern

    * print 'Validated RunStart: ' + log.RunStart
    * print 'Validated RunEnd: ' + log.RunEnd
