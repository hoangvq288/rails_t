Feature: Authentication
  In order to use the website
  As a user
  I should able to sign up, log in and log out

Scenario: Signing up
  Given I visit the homepage
  When I fill in the sign up form
  And I confirm the email
  Then I should see that my account is confirmed