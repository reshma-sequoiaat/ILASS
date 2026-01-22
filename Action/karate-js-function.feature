# Feature: JavaScript Functions with karate.match

# Scenario: Define Functions
  

#   * def wrongCompare = 
#   """
#   function(arr1, arr2) {
#     karate.match(arr1, arr2);
#     return true;  // Always returns true!
#   }
#   """
  #* def correctCompare =  
#   """
#   function(arr1, arr2) {
#     var isMatch = karate.match(arr1, arr2).pass;
#     return isMatch;
#   }
#   """
  
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

      karate.set('comparisonResults', booleanResults);
      karate.set('overallMatch', overallMatch);

      return {
        booleanResults: booleanResults,
        overallMatch: overallMatch,
        matchCount: matchCount,
        mismatchCount: mismatchCount
      };
    }
    """
