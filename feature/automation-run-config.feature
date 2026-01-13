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
    * configure afterScenario = 
      """
      function() {
        karate.call('../Action/configfile.feature', { configPath: configPath, values: oldValues });
      }
      """
  Scenario: Run automation with modified config
    * call read("../Action/configfile.feature") { configPath: configPath, values: newValues }
    * print "Automation running with modified configuration..."

