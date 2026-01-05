Feature: Run Automation

  Scenario: Run Product Table Operations
  * call read('../Action/input-data.feature@find-products')
  * call read('../Action/products.feature')