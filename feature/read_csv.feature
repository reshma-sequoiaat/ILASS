Feature: Read CSV file

Scenario: Read CSV data
    * def data = read('classpath:feature/mock/data.csv')
    * print data

