Feature: Utility for JS Matching

  Scenario: Define Match Utility
    * def validator =
      """
      function(actual, expected) {
        var matchResult = karate.match(actual, expected);
        var isMatch = matchResult.pass; 
    
        if (!isMatch) {
          karate.log('Match Failed! Details: ' + matchResult.message);
        }
        
        return isMatch;
      }
      """

    * def buggyValidator =
      """
      function(actual, expected) {
        var result = karate.match(actual, expected);
        return result; 
      }
      """