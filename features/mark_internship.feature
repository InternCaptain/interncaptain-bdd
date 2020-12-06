Feature: Mark internship as important

  Background:
    Given I am logged in
    And I am a "STUDENT"
    And this internship is in the database:
      | key       | C#        |
      | company   | FlyingPig |
      | positions | 10        |

  Scenario Outline: Toggle favorite
    Given I am on "internships/FlyingPig/C#" page
    And internship is "<status>" as favorite
    When I click on "Favorite"
    Then I receive "<notification>" notification message
    And internship is "<new_status>" as favorite
    Examples:
      | status     | new_status | notification        |
      | marked     | not_marked | INTERNSHIP_MARKED   |
      | not marked | marked     | INTERNSHIP_UNMARKED |
