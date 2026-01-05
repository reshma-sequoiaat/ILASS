Feature: Calculator operations using single scenario and table

@calculator
Scenario: Perform calculator operations using table driven inputs
  * table testData 
    | First         | Operator         | Second       | Expected |
    | 'num5Button'  | 'plusButton'     | 'num2Button' | 'Display is 7' |
    | 'num5Button'  | 'minusButton'    | 'num2Button' | 'Display is 3' |
    | 'num5Button'  | 'multiplyButton' | 'num2Button' | 'Display is 10' |
    | 'num8Button'  | 'divideButton'   | 'num2Button' | 'Display is 4' |
  
  @find-products
  Scenario: Find lowest discount and highest price

    * table Products
      | Id | ProductName | Price | Discount |
      | 1  | 'Laptop'    | 80000 | 10       |
      | 2  | 'Mobile'    | 60000 | 5        |
      | 3  | 'Tablet'    | 40000 | 8        |
      | 4  | 'Monitor'   | 20000 | 15       |
