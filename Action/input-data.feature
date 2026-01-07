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


    @employee
  Scenario: Process employee data 
    * table Employees
      | name     | id | salary | designation          | address      | department |
      | 'Ajo'    | 101 | 18000 | 'Tester'             | 'Bangalore'  | 'QA'       |
      | 'Reshma' | 102 | 25000 | 'Developer'          | 'Hyderabad'  | 'IT'       |
      | 'Ebin'   | 103 | 35000 | 'Senior Developer'   | 'Pune'       | 'IT'       |
      | 'Tippi'  | 104 | 42000 | 'Manager'            | 'Chennai'    | 'HR'       |
      | 'Ashik'  | 105 | 30000 | 'Analyst'            | 'Mumbai'     | 'Finance'  |
      | 'Sufail' | 106 | 22000 | 'HR Executive'       | 'Delhi'      | 'HR'       |


