Feature: Update XML config file
  Scenario:
    * def scriptPath = "../scripts/update-config.ps1"
    * def command = 'powershell -ExecutionPolicy Bypass -File ' + scriptPath + ' "' + configPath + '" "' + values.WaitTimeForPreparation + '" "' + values.SimulationMode + '" "' + values.StopAppOnExit + '"'
    * karate.exec(command)
