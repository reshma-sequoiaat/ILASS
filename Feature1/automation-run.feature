Feature: Run Automation

Scenario: Execute Calculator Scenarios

    * def scenarios =
    """
    [
      { num1: '#num5Button', operator: '#plusButton',     num2: '#num2Button', expected: 'Display is 7'  },
      { num1: '#num5Button', operator: '#minusButton',    num2: '#num2Button', expected: 'Display is 3'  },
      { num1: '#num5Button', operator: '#multiplyButton', num2: '#num2Button', expected: 'Display is 10' },
      { num1: '#num8Button', operator: '#divideButton',   num2: '#num2Button', expected: 'Display is 4'  }
    ]
    """

    * def runScenario =
    """
    function(scenario) {
      karate.call('../Action/calculator.feature', scenario);
    }
    """

    * karate.forEach(scenarios, runScenario)
