@javascript
Feature: Coach can create a letter of reccomendation

    As a Coach
    In order to leave a note about the students
    I would like to leave a letter of reccomendation

  Background:
    Given the following users exists
            | email              | first_name | last_name | role   | gender | age |
            | alumni_1@craft.com | Student    | One       | member | Male   | 34  |
            | alumni_2@craft.com | Student    | Two       | member | Female | 19  |
            | alumni_3@craft.com |            |           | member | Male   |     |
            | coach_1@craft.com  | Head       | Coach     | coach  | Female |     |

    And coach "coach_1@craft.com" is logged in

    Scenario: Coach can create a letter of reccomendation
    When I am on the 'member' page

