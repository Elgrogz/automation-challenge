Feature: Validate the login page
  As a new Freeagent user
  I want to be able to login to Freeagent
  So that I can setup my account

  Background:
    Given I navigate to the login page

  Scenario: When I log in with an incorrect email/password combination
    When I login with an invalid credential combination
    Then I should see the invalid credentials login error message

  Scenario: When I log in with a new user
    When I login with a valid credential combination for a new user
    Then I should see the Freeagent sandbox setup page