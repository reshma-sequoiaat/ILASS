Feature: Utility for Array Comparison with JS Match

Scenario: Define Array Comparison Functions
  * def buggyArrayCompare =
    """
    function(arr1, arr2) {
      var result = karate.match(arr1, arr2);
      return result;
    }
    """

  * def correctArrayCompare =
    """
    function(arr1, arr2) {
      var matchResult = karate.match(arr1, arr2);
      var isMatch = matchResult.pass;

      if (!isMatch) {
        karate.log('Arrays do not match! Details: ' + matchResult.message);
      }

      return isMatch;
    }
    """

  * def compareElementByElement =
    """
    function(arr1, arr2) {
      var booleanResultsArray = [];

      for (var i = 0; i < arr1.length; i++) {
        var matchResult = karate.match(arr1[i], arr2[i]);
        var isMatch = matchResult.pass;

        booleanResultsArray.push(isMatch);

        if (!isMatch) {
          karate.log('Mismatch at index ' + i + ': ' + arr1[i] + ' vs ' + arr2[i]);
        }
      }

      return booleanResultsArray;
    }
    """

  * def analyzeArrayComparison =
    """
    function(arr1, arr2) {
      var booleanResults = compareElementByElement(arr1, arr2);
      var overallMatch = correctArrayCompare(arr1, arr2);

      var matchCount = 0;
      var mismatchCount = 0;
      for (var i = 0; i < booleanResults.length; i++) {
        if (booleanResults[i]) matchCount++;
        else mismatchCount++;
      }

      return {
        booleanResults: booleanResults,
        overallMatch: overallMatch,
        matchCount: matchCount,
        mismatchCount: mismatchCount
      };
    }
    """

Scenario: Run Array Comparison Functions in automation flow
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