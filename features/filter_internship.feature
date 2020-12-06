Feature: Filter internships

  Background:
    Given I am logged in
    And I am a "STUDENT"

  Scenario: Filter by domain
    Given I am on "internships" page
    When I select "Computer Science" from "Domain" box
    And I click on "Search"
    Then I receive a list of internships

  Scenario: Filter by input
    Given I am on "internships" page
    When I enter "Java" in the "search" input
    And I click on "Search"
    Then I receive a list of internships