Feature: Run Product Automation using CSV

Scenario: Verify Product Calculations using CSV
  * def Products = read('../test-inputs/product.csv')
  * call read('../Action/products.feature')
