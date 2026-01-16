Feature: Sleep Automation Run Function

Background:
    * def util = call read('../Action/sleep-function.feature')

Scenario: Sleep for 1 minute and print time

    * def before = new Date().toString()
    * print 'Before sleep:', before
    * eval util.sleep(1)
    * def after = new Date().toString()
    * print 'After sleep:', after
