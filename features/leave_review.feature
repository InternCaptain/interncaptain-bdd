Feature: Leave review for internship

  Background:
    Given I am logged in
    And I am a "STUDENT"
    And this internship is in the database:
      | key       | C#        |
      | company   | FlyingPig |

  Scenario: Leave review
    Given I am on "internships/FlyingPig/C#" page
    When I click on "Leave review"
    And I enter "Good" in the "review" input
    And I click on "Sent"
    Then I receive "REVIEW_SENT" notification message
