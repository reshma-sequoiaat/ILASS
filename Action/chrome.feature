# Open Chrome and search any word
Feature: Open Chrome and Search
  Scenario: Launch New Chrome Instance and Search
      * robot chromeRobot
      * window('^Google Chrome')
      * focus('^Google Chrome')
      * delay(1000)
      * input(Key.CONTROL + 'l')
      * input('karate guide' + Key.ENTER)
      * delay(3000)
      * screenshot()

#**************************************************************************************************************************************

# Open chrome and navigate to upload page
Feature: Open Chrome and Search
  Scenario: Launch New Chrome Instance and Search
    * configure driver = { type: 'chrome' }
    * driver 'https://practice-automation.com/file-upload'
    * waitFor('#file-upload').input(Key.ENTER).click()
    * delay(3000)
    * robot { windowOptional: true, fork: false }
    * robot.input(Key.ALT + 'd')
    * delay(500)
    * robot.input('Downloads')
    * robot.input(Key.ENTER)
    * delay(1000)
    * robot.input(Key.ALT + 'n')
    * robot.input('log.txt')
    * delay(1000)
    * robot.input(Key.ENTER)
    * delay(2000)
    * screenshot()
