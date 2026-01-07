Feature: Run xml feature to print note details

Scenario: XML print note details
  * def XML = read('../test-inputs/note.xml')
  * call read('../Action/print_notexml.feature')