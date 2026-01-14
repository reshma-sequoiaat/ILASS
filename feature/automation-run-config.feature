# Manipulate configuration file before running automation******************

# Feature: Run Automation

#   Scenario: Run config file
#     * def XML = read('../test-inputs/test-config.xml')
#     * call read('../Action/configfile.feature')

# Update XML config file***********************************************
Feature: Automation run with config update

  Background:
    * def configPath = "../test-inputs/test-config.xml"

  Scenario: Run automation with modified config

    * def updateConfig = karate.fork(`cmd /c powershell -command "$doc = [Xml](Get-Content '${configPath}'); $doc.configuration.appSettings.add | ? {$_.Key -eq 'SimulationMode'} | % {$_.Value = 'true'}; $doc.configuration.appSettings.add | ? {$_.Key -eq 'StopAppOnExit'} | % {$_.Value = 'true'}; $doc.Save('${configPath}')"`)
    * updateConfig.waitSync()
    
    * print "Automation running with modified configuration..."
