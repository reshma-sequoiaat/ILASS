Feature: Upload file using own HTML page
 
Scenario: User uploads a file using custom HTML page
    * configure driver = { type: 'chrome' }

    * def html = karate.toAbsolutePath('classpath:resources/upload.html')
    * driver 'file:' + html
    * waitFor('#fileInput').input(Key.ENTER).click()
    * delay(2000)
    * robot { window: 'Open', fork: false }
    * robot.input(Key.ALT + 'd') 
    * delay(500)
    * robot.input('Downloads')
    * robot.input(Key.ENTER)
    * delay(1000)
    * robot.input(Key.ALT + 'n')
    * robot.input('log.txt')
    * delay(500)
    * robot.input(Key.ENTER)
    * delay(2000)
    * screenshot()