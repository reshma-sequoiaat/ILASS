Feature: Browser Search and File Upload

Scenario: Chrome Search and Upload
  * configure driver = { type: 'chrome' }
  * driver 'https://www.google.com/search?q=karate+dsl' # Search a word 
  * delay(2000)
  * driver 'https://practice-automation.com/file-upload'
  * waitFor('#file-upload').input(Key.ENTER).click()
  * delay(2000)
  * robot { windowOptional: true, fork: false }
  * robot.input(Key.ALT + 'd')
  * delay(500)
  * robot.input('Downloads' + Key.ENTER)
  * delay(1000)
  * robot.input(Key.ALT + 'n')
  * delay(1000)
  * robot.input('log.txt' + Key.ENTER)
  * delay(3000)
  * screenshot()