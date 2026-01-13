param (
    [string]$configPath,
    [string]$waitTime,
    [string]$simulationMode,
    [string]$stopAppOnExit
)

[xml]$xml = Get-Content $configPath

($xml.configuration.appSettings.add | Where-Object { $_.key -eq "WaitTimeForPreparation" }).value = $waitTime
($xml.configuration.appSettings.add | Where-Object { $_.key -eq "SimulationMode" }).value = $simulationMode
($xml.configuration.appSettings.add | Where-Object { $_.key -eq "StopAppOnExit" }).value = $stopAppOnExit

$xml.Save($configPath)
