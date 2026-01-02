Feature: Run Automation

  Scenario: Verify Addition Operation
    * def dataContainer = call read('../Action/calculator-data.feature@data_addition')
    * call read('../Action/calculator.feature') dataContainer.data

  Scenario: Verify Subtraction Operation
    * def dataContainer = call read('../Action/calculator-data.feature@data_subtraction')
    * call read('../Action/calculator.feature') dataContainer.data

  Scenario: Verify Multiplication Operation
    * def dataContainer = call read('../Action/calculator-data.feature@data_multiplication')
    * call read('../Action/calculator.feature') dataContainer.data
  
  Scenario: Verify Division Operation
    * def dataContainer = call read('../Action/calculator-data.feature@data_division')  
    * call read('../Action/calculator.feature') dataContainer.data