Feature: Calculator operations using single scenario and table

Scenario: Perform calculator operations using table driven inputs
  * def testData =
    | numButton   | operatorButton | num2Button | expected |
    | num5Button  | plusButton     | num2Button | 7        |
    | num5Button  | minusButton    | num2Button | Display is 3 |
    | num5Button  | multiplyButton | num2Button | Display is 10 |
    | num8Button  | divideButton   | num2Button | 4        |

  * def calculator = call read('calculator.feature')

  * karate.forEach(testData, function(row){
      karate.call('calculator.feature', row)
    })
