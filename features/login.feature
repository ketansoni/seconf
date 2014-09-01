Feature: Login into vulnerable php site

  Scenario: login scenario

    Given I am on the home page
    When I login with valid credentials
    Then I should be logged in