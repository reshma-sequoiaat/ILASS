Feature: Debug windows

Scenario: Open and capture Notepad
  # 'fork' tells Karate to start the program itself
  * robot { window: '.*Notepad.*', fork: 'notepad.exe' }
  * robot.delay(2000)
  * robot.screenshot()