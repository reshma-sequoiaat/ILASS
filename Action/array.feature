Feature: Verify Array Operations

Scenario: Perform department array operations

  * def originalCount = departments.length
  * print 'Original count:', originalCount
  * print '4th index department:', departments[4]
  * print '6th index department:', departments[6]
  * def deptToRemove = departments[8]
  * print 'Removing department:', deptToRemove
  * eval departments.splice(departments.indexOf(deptToRemove), 1)
  * eval departments.splice(8, 0, 'Research')
  * eval
  """
  for (var i = 0; i < departments.length; i++) {
    karate.log(i + ' -> ' + departments[i]);
  }
  """
  * assert departments.length == originalCount
