# Manipulate configuration file before running automation******************

Feature: Run Automation

  Scenario: Run config file
    * def XML = read('../test-inputs/test-config.xml')
    * call read('../Action/configfile.feature')

# Update XML config file***********************************************
Feature: Automation run with config update

Background:
  * def configPath = karate.toAbsolutePath('../inputs/test-config.xml')

  * configure afterScenario = 
  """
  function() {
    var cmd = `cmd /c powershell -command "$configPath = '${configPath}'; $doc = (Get-Content $configPath) -as [Xml]; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'WaitTimeForPreparation'}; $obj.value = '4000'; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'SimulationMode'}; $obj.value = 'false'; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'StopAppOnExit'}; $obj.value = 'false'; $doc.Save($configPath)"`;
    
    var revertKeys = karate.fork(cmd);
    revertKeys.waitSync();
  }
  """

Scenario: Modify XML and Execute Application
  * def updateKeys = karate.fork(`cmd /c powershell -command "$configPath = '${configPath}'; $doc = (Get-Content $configPath) -as [Xml]; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'WaitTimeForPreparation'}; $obj.value = '8000'; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'SimulationMode'}; $obj.value = 'true'; $obj = $doc.configuration.appSettings.add | where {$_.Key -eq 'StopAppOnExit'}; $obj.value = 'true'; $doc.Save($configPath)"`)
  * updateKeys.waitSync()

  * print "Automation running with modified configuration..."