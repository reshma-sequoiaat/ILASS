Feature: Windows Locator 

Scenario: Launch Control Panel, screenshot, and close

    * robot { window: '^Control Panel', fork: 'control.exe' }
    * Locate
    * screenshot()