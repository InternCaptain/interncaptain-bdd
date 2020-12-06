Feature: Apply to internship

  Background:
    Given I am logged in
    And I am a "STUDENT"
    And this internship is in the database:
      | key       | C#        |
      | company   | FlyingPig |
      | positions | 10        |

  Scenario: Normal case
    Given I am on "internships/FlyingPig/C#" page
    When I click on "Apply"
    Then I receive "INTERNSHIP_APPLY" notification message
