Feature: test1-feature
  Background:
    Given User prints comment "User navigates to Thinkmobiles page"
    When  User navigates to the "Thinkmobiles" page with url "https://thinkmobiles.com"
    Then  Page title is equal to "ThinkMobiles"
    And   User waits 6 seconds

  Scenario: 1: Test all projects page view
    When  User clicks "findProjectsViewAllLink" "body > div.wrapper > main > div > h2:nth-child(7) > noindex > a"
    And   User waits 6 seconds
    Then  Page URL is equal to "https://thinkmobiles.com/projects/"

  Scenario: 2: Test project page view
    When  User clicks "findProjectsViewAllLink" "body > div.wrapper > main > div > h2:nth-child(7) > noindex > a"
    And   User waits 6 seconds
    Then  Page URL is equal to "https://thinkmobiles.com/projects/"
    When  User clicks "projectNameLink" "#app > div > div > div > div:nth-child(4) > h4 > noindex > a"
    Then  Page URL is equal to "https://thinkmobiles.com/projects/239/"

  Scenario: 3: Test project page owner info
    When  User clicks "findProjectsViewAllLink" "body > div.wrapper > main > div > h2:nth-child(7) > noindex > a"
    And   User waits 6 seconds
    Then  Page URL is equal to "https://thinkmobiles.com/projects/"
    When  User clicks "projectNameLink" "#app > div > div > div > div:nth-child(4) > h4 > noindex > a"
    Then  Page URL is equal to "https://thinkmobiles.com/projects/239/"
    When  User clicks "appProjectButton" "#showEmployerInfo"
    Then  "PostMessage" "#shareBlock > div.modal-msg.share-body > h3" is displayed

