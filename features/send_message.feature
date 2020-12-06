Feature: Send message

  Background:
    Given I am logged in
    And I am a "HR"
    And this user is in the database:
      | first_name | Silviu                   |
      | last_name  | Cucuiet                  |
      | email      | silviu.cucuiet@gmail.com |
      | role       | STUDENT                  |

  Scenario: Normal case
    Given I am on "students" page
    When I click on "Message"
    And I enter "Hello" in the "message" input
    Then "message" is sent to user "silviu.cucuiet@gmail.com"