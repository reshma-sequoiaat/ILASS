Feature: Automation Run Karate JS Function

  Scenario: Run a Karate JS Function as part of an automation flow
    * call read('../Action/karate-js-function.feature')
    
    * def myData = { name: 'John', age: 30 }
    * def wrongSchema = { name: '#string', age: '#string' } 

    * def buggyResult = buggyValidator(myData, wrongSchema)
    * print 'Buggy Result Object:', buggyResult

    * def isValid = validator(myData, wrongSchema)
    * print 'Correct Boolean Result:', isValid
    * match isValid == false
    * karate.set('userId', 12345)
    * karate.set('validationStatus', isValid)
    * def id = karate.get('userId')
    * def status = karate.get('validationStatus')
    * print 'Retrieved ID:', id, 'and Status:', status