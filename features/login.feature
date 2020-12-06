Feature: Login in application

  Background:
    Given I am not logged in
    And this user is in the database:
      | first_name | Silviu                   |
      | last_name  | Cucuiet                  |
      | email      | silviu.cucuiet@gmail.com |
      | password   | Pass1234                 |

  Scenario: Success
    Given I am on "login" page
    When I enter "silviu.cucuiet@gmail.com" in the "email" input
    And I enter "Pass1234" in the "password" input
    And I click on "Submit"
    Then I am logged in
    And I am redirected to "home" page

  Scenario Outline: Fail
    Given I am on "login" page
    When I enter "<email>" in the "email" input
    And I enter "<password>" in the "password" input
    And I click on "Submit"
    Then I receive "<error>" validation message
    Examples:
      | email                    | password      | error              |
      | error@email.com          | AnyPassword   | NO_USER            |
      | silviu.cucuiet@gmail.com | IncorrectPass | INCORRECT_PASSWORD |
