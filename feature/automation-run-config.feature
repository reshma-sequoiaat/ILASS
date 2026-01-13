# Manipulate configuration file before running automation******************

# Feature: Run Automation

#   Scenario: Run config file
#     * def XML = read('../test-inputs/test-config.xml')
#     * call read('../Action/configfile.feature')

# Update XML config file***********************************************
Feature: Automation run with config update

  Background:
    * def configPath = "../test-inputs/test-config.xml"
    * def oldValues = { WaitTimeForPreparation: "4000", SimulationMode: "false", StopAppOnExit: "false" }
    * def newValues = { WaitTimeForPreparation: "6000", SimulationMode: "true", StopAppOnExit: "true" }
    
    # Reset config back to old values after the scenario finishes
    * configure afterScenario = 
      """
      function() {
        karate.call('../Action/configfile.feature', { configPath: configPath, values: oldValues });
      }
      """

  Scenario: Run automation with modified config
    # Inline PowerShell update using karate.fork
    * def psCommand = 'powershell -command "$doc = (Get-Content ' + configPath + ') -as [Xml]; $doc.configuration.appSettings.add | ? {$_.Key -eq \'SimulationMode\'} | % {$_.Value = \'true\'}; $doc.configuration.appSettings.add | ? {$_.Key -eq \'StopAppOnExit\'} | % {$_.Value = \'true\'}; $doc.Save(\'' + configPath + '\')"'
    * def updateKeys = karate.fork('cmd /c ' + psCommand)
    * updateKeys.waitSync()
    
    * print "Automation running with modified configuration..."
