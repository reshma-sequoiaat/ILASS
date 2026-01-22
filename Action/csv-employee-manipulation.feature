Feature: Employee Data Manipulation

  Scenario Outline: Process Row
    * print '--- Manipulating Data for:', name, '---'
    * def taxAmount = salary * 0.10
    * def netSalary = salary - taxAmount
    * def isIT = department == 'IT' ? 'Internal Tech' : 'Support/Operations'
    
    # Output results
    * print 'ID Reference:', id
    * print 'Calculated Net Salary:', netSalary
    * print 'Department Category:', isIT
    * print 'Address on file:', address

    Examples:
      | Employees |