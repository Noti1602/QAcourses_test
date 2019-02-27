@Regression
Feature: test-feature

  Background:
    Given User prints comment "User navigates to the Calculator page"
    When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
    Then Page title is equal to "Super Calculator"

  Scenario: 1: Verify calculator
    When User enters 3 in field "first"
    When User enters 4 in field "second"
    When User clicks Go Button "gobutton"
    Then History "result memory" is equal to 0
    When User enters 5 in field "first"
    When User enters 6 in field "second"
    When User clicks Go Button "gobutton"
    Then History "result memory" is equal to 0
