Feature: PowerShell Find File Size

  Scenario: Find files smaller than 2MB and print their Name and FullPath
    * def command = 'Get-ChildItem -Path "' + testInputsPath + '" -Recurse -File | Where-Object { $_.Length -lt 2MB } | Select-Object Name, FullName | Format-Table -AutoSize'
    * print 'Executing PowerShell command to find files < 2MB...'
    * def result = karate.exec('powershell -Command "' + command + '"')
    * print result