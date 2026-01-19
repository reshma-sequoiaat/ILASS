Feature:Karate function

# Scenario: Set and Get values using karate object
#     * def temp = 'Hello World'
#     * karate.set('myKey', temp)
#     * def result = karate.get('myKey') 
#     * print 'The value of myKey is:', result 

Scenario: Set and Get values using karate object

    * karate.set('userId', 12345)
    * karate.set('userName', 'JohnDoe')
    * def id = karate.get('userId')
    * def name = karate.get('userName')
