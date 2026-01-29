Feature: Generate Random Phone Number logic

Scenario: Generate and process phone number

    * def phoneNumber = call read(resourcePath + '/random-phone.js')
    * def envLabel = phoneNumber.contains('555') ? 'TEST-ENV' : 'PROD-ENV'
    * print 'Environment Label:', envLabel
    * def isEven = parseInt(phoneNumber.slice(-1)) % 2 == 0
    
    * if (isEven) karate.log('Condition Met: Printing Employee Data')
    
    * def employee = { id: 'EMP_99', name: 'Arjun', contact: '#(phoneNumber)' }
    * if (phoneNumber.startsWith('555')) karate.log('Target Employee Record:', employee)
    * print 'Generated Phone Number is:', phoneNumber