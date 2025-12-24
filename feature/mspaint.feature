Feature: Paint simple test

Scenario: Open Paint and click Pencil tool

  * robot { fork: 'mspaint', windowOptional: true }
  * delay(3000)

  * click('Pencil')
  * click('Rectangle')
  