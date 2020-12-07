Feature: Upload personal info

  Background:
    Given I am logged in
    And I am a "STUDENT"

  Scenario: CS student
    Given I am on "info" page
    When I enter "computer science" in the "domain" input
    And I click on "Save"
    Then I receive "INFORMATION_UPDATED" notification message