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
    * robot chromeRobot
    * window('^Google Chrome')
    * focus('^Google Chrome')
    * delay(1000)
    * input(Key.CONTROL + 'l')
    * input('https://practice.expandtesting.com/upload' + Key.ENTER)
    * delay(3000)

#**************************************************************************************************************************************

# Upload a file using Robot class in chrome
Feature: Upload file using web page

  Scenario: User uploads a file using practice.expandtesting.com
    * configure driver = { type: 'chrome' }
    * driver 'https://practice.expandtesting.com/upload'
    * waitFor('#fileInput').input(Key.ENTER).click()
    * delay(2000)
    * robot { windowOptional: true, fork: false }
    * robot.input(Key.ALT + 'd')
    * delay(500)
    * robot.input('Downloads')
    * robot.input(Key.ENTER)
    * delay(1000)
    * robot.input(Key.ALT + 'n')
    * robot.input('log.txt')
    * delay(500)
    * robot.input(Key.ENTER)
    * waitFor('button[type=submit]').click()
    * delay(2000)
    * screenshot()

