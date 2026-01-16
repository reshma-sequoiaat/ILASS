Feature: Array loop and validation using match each

Scenario: Loop over array and verify required value
    * def fruits = ['apple', 'banana', 'orange', 'mango']
    * match each fruits == '#string'
    * match fruits contains 'banana'
    * def result = []
    * eval
    """
    for (var i = 0; i < fruits.length; i++) {
        karate.log('Fruit:', fruits[i]);
        result.push(fruits[i]);
    }
    """
    * match each result == '#string'
