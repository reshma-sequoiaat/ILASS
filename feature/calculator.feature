Feature: windows calculator

  Scenario: 
    * robot {window: 'Calculator', fork: 'calc', highlight: true, highlightDuration: 500}
    * highlightAll('//button')
    # * click('Clear')
    * delay(500).locate('#num1Button').click()
