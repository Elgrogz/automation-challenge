Feature: Validate the setup page
  As a new Freeagent user
  I want to be able to setup my freeagent account
  So that I can start using its features

  Background:
    Given I navigate to the login page
    When I login with a valid credential combination for a new user

  Scenario: When Select a US business type
    When I choose "US Sole Proprietor" in the business type dropdown
    Then I should see the state dropdown
    