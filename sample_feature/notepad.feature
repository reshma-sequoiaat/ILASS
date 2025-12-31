# Feature: Find Windows Titles

# Scenario:
#     * robot { highlight: true }
#     * print robot.windows

# Feature: Robot Sanity Test

# Scenario:
#     * def r = karate.exec('notepad.exe')
#     * eval java.lang.Thread.sleep(3000)

#     * robot { highlight: true }

#     * print robot.windows

Feature: Notepad Automation

  Scenario:
    * robot { window: 'Untitled - Notepad', fork: 'notepad', highlight: true, highlightDuration: 500 }
    * delay(1000)
    * click('Edit')

    * robot.delay(1000)