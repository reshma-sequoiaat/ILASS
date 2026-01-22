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
  Feature: Chrome File Upload via Robot

  Scenario: Upload a PDF from Downloads
    * robot chromeRobot
    * window('^Google Chrome')
    * focus('^Google Chrome')
    * delay(1000)
    * input(Key.CONTROL + 'l')
    * input('https://practice.expandtesting.com/upload' + Key.ENTER)
    * delay(4000)
    # Directly open file dialog using keyboard
    * click('Choose File')
    * delay(2000)

    # Windows "Open" dialog
    * window('Open')
    * input(testInputsPath + '/sample.pdf')
    * input(Key.ENTER)
    * delay(2000)

    * window('^Google Chrome')
    * click('Upload')
    * delay(3000)
    * screenshot()
