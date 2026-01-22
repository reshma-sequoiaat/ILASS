# Feature: Test Array Comparison with karate.match

# Scenario: Compare arrays element by element using .pass property

#   * def compareElements = 
#   """
#   function(arr1, arr2) {
#     var results = [];
#     for (var i = 0; i < arr1.length; i++) {
#       var isMatch = karate.match(arr1[i], arr2[i]).pass;
#       results.push(isMatch);
#     }
#     return results;
#   }
#   """
#   * def array1 = [10, 20, 30, 40]
#   * def array2 = [10, 99, 30, 88]
#   * def booleanArray = compareElements(array1, array2)
#   * karate.log('Boolean Results:', booleanArray)
#   * match booleanArray == [true, false, true, false]
#   * match booleanArray[0] == true
#   * match booleanArray[1] == false
#   * match booleanArray[2] == true
#   * match booleanArray[3] == false



Feature: Automation Run Karate JS Function for Array Comparison

Scenario: Run Array Comparison Functions in automation flow
  * call read('../Action/karate-js-function.feature')

  * def array1 = [10, 20, 30, 40, 50]
  * def array2 = [10, 99, 30, 88, 50]

  * def buggyResult = buggyArrayCompare(array1, array2)
  * print 'Buggy Result Object:', buggyResult

  * def analysis = analyzeArrayComparison(array1, array2)

  * print 'Boolean Results Array:', analysis.booleanResults
  * print 'Overall Match:', analysis.overallMatch
  * print 'Total Matches:', analysis.matchCount
  * print 'Total Mismatches:', analysis.mismatchCount

  * match analysis.booleanResults == [true, false, true, false, true]
  * match analysis.overallMatch == false
  * match analysis.matchCount == 3
  * match analysis.mismatchCount == 2

