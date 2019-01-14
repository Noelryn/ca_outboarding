@javascript
Feature: Members profile can be made visible or invisible by a coach

    As a Coach
    In order to control whose profiles are being displayed to Visitors and Subscribers
    I would like to be able to toggle visibility by setting an attribute on each profile.

    Background:
        Given the following users exists
            | email              | first_name | last_name | role   | gender | age |
            | alumni_1@craft.com | Student    | One       | member | Male   | 34  |
            | alumni_2@craft.com | Student    | Two       | member | Female | 19  |
            | alumni_3@craft.com |            |           | member | Male   |     |

       And the following users exists
            | email             | first_name | last_name | role  |
            | coach_1@craft.com | Coach      | One       | coach |

        And coach "coach_1@craft.com" is logged in

    Scenario: Zak hasn't fucked up and the coach would like to make his profile visible on the site
        Given he visits the admin page
      
        Then he should see "Student One" 
        And he should see "Student Two" 