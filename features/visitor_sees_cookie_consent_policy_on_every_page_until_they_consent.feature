Feature: Show cookie consent policy until visitor concents
    As a system owner
    In order to be (at least somewhat) GDPR compliant
    I would like to remind visitors to consent to cookie policy

    @javascript
    Scenario: Visitor can see and consent to usage of cookies
        Given a visitor visits the site
        Then he should see "Cookies help us deliver our services. By using our services, you agree to our use of cookies."
        And he clicks on "CraftEd"
        Then he should see "Cookies help us deliver our services. By using our services, you agree to our use of cookies."
        And he wait 5 second
        And he should see "OK"
        And he accepts the cookie
        Then he should not see "Cookies help us deliver our services. By using our services, you agree to our use of cookies."
