Feature: Register new user

  Background:
    Given I am not logged in

  Scenario: Success
    Given I am on "Register" page
    When I enter "silviu.cucuiet@gmail.com" in the "email" input
    And I enter "Pass1234" in the "password" input
    And I click on "Register"
    Then I am logged in
    And I am redirected to "home" page

  Scenario Outline: Fail
    Given I am on "Register" page
    When I enter "<email>" in the "email" input
    And I enter "<password>" in the "password" input
    And I click on "Submit"
    Then I receive "<error>" validation message
    Examples:
      | email                    | password      | error              |
      | errorin the email        | AnyPassword   | NO_USER            |
      | silviu.cucuiet@gmail.com | IncorrectPass | INCORRECT_PASSWORD |
