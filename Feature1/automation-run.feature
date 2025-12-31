Feature: Run Automation

Scenario Outline: Execute Calculator Scenario for <opName>
    # This calls the other feature file once for every row in the Examples table
    * call read('../Action/calculator.feature') { num1: '#<num1>', operator: '#<operator>', num2: '#<num2>', expected: '<expected>' }

    Examples:
      | opName   | num1       | operator       | num2       | expected      |
      | Addition | num5Button | plusButton     | num2Button | Display is 7  |
      | Subtract | num5Button | minusButton    | num2Button | Display is 3  |
      | Multiply | num5Button | multiplyButton | num2Button | Display is 10 |
      | Divide   | num8Button | divideButton   | num2Button | Display is 4  |