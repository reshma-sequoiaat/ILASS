Feature: Notepad Automation using Karate Robot

  Scenario: Type text in Notepad and save the file

    * robot { window: '^Notepad', fork: 'notepad', highlight: true }
    * robot.input('Hello, Good Morning!')
    * robot.delay(1000)
    * robot.input(Key.CONTROL + Key.SHIFT + 's')
    * robot.window('^Save as')
    * robot.delay(1000)
    * robot.input(testInputsPath + '/automation_note.txt')
    * robot.click('Save')
    * robot.delay(1000)
    * robot.window('^Notepad')
    * robot.input(Key.ALT + Key.F4)
