Feature: Windows Locator Fix

Scenario: Launch Character Map and print key info
    * robot { window: 'Character Map', fork: 'charmap.exe' }
    * click('#108')
    * screenshot()