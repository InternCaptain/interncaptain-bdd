Feature: Request information for internship

  Background:
    Given I am logged in
    And I am a "STUDENT"
    And this internship is in the database:
      | key       | C#        |
      | company   | FlyingPig |
      | positions | 10        |

  Scenario: Normal case
    Given I am on "internships/FlyingPig/C#" page
    When I click on "Request information"
    And I enter "Address" in the "request" input
    And I click on "Sent"
    Then I receive "REQUEST_SENT" notification message
