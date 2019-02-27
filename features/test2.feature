Feature: test2-feature
  Background:
    Given User prints comment "User navigates to Thinkmobiles widget page"
    When  User navigates to the "Thinkmobiles widget page" page with url "https://thinkmobiles.com/widget/"
    Then  Page title is equal to "ThinkMobiles"
    And   User waits 6 seconds

  Scenario: 1: Test generation badge and HTML code on the Thinkmobiles widget page
    When  User clicks "itServicesCategoryButton" "body > div.wrapper > main > div > div > div:nth-child(2) > div > div.product-type-item > label:nth-child(2)"
    And   User enters "mobile app" in "findField" "#widgetSearchInput"
    And   User waits 4000 seconds
    And   User clicks "mobileAppText" "#widgetSearchResult > li:nth-child(2) > a"
    Then  "Badge" "#categoryLineName" is displayed
    And   "HTMLCode" "#widgetHtml" is displayed

