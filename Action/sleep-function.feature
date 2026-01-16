Feature: Sleep JS function utility

Scenario:
    * def sleep =
    """
    function(minutes) {
        java.lang.Thread.sleep(minutes * 60 * 1000);
    }
    """
