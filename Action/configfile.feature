Feature: Update XML config file
  Scenario:
    * def command = 'powershell -ExecutionPolicy Bypass -File ' + ' "' + configPath + '" "' + values.WaitTimeForPreparation + '" "' + values.SimulationMode + '" "' + values.StopAppOnExit + '"'
    * karate.exec(command)
