Feature: Authentication
  In order to use the website
  As a user
  I should able to sign up, log in and log out

Scenario: Signing up
  Given I visit the homepage
  When I fill in the sign up form
  And I confirm the email
  Then I should see that my account is confirmed


Scenario: User Logs in
  Given I am a registered user
  And I visit the homepage
  When I fill in the login form
  Then I should be logged in

Scenario: User Logs out
  Given I am a registered user
  And I am logged in
  And I visit the homepage
  When I click on the log out button
  Then I should be redirected to the log in page
