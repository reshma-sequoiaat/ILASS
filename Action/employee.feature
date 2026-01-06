Feature: Employee CSV Logic

  Scenario: Process employee data from CSV

    * def employees = Employees
    * def min = 20000
    * def max = 40000
    * def filteredEmployees =
    """
    employees.filter(e => e.salary >= min && e.salary <= max).map(e => e.name)
    """

    * print 'Employees with salary between 20000 and 40000:', filteredEmployees

    * def departmentCount =
    """
    employees.reduce(function(count, e){
    count[e.department] = (count[e.department] || 0) + 1;
    return count;
    }, {})
    """

    * print 'Employee count per department:', departmentCount
