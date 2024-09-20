Feature: Login
  As a user
  I want to login
  So that I can access dashboard page

  Scenario: As a user I can login with valid credentials
    Given I am on the login page
    When I enter valid email
    And I enter valid password
    And I click login button
    Then I redirected to the dashboard page

  Scenario: As a user I cannot login with invalid credentials
    Given I am on the login page
    When I enter invalid email
    And I enter invalid password
    And I click login button
    Then I received an error message in the wrong email and password fields

  Scenario: As a user I cannot login with invalid email
    Given I am on the login page
    When I enter invalid email
    And I enter valid password
    And I click login button
    Then I received an error message in the fields email

  Scenario: As a user I cannot login with invalid password
    Given I am on the login page
    When I enter valid email
    And I enter invalid password
    And I click login button
    Then I received an error message in the fields password

  Scenario: As a user I cannot login because the email field is empty
    Given I am on the login page
    When I left the email field blank
    And I enter valid password
    And I click login button
    Then I received an error message in the fields email

  Scenario: As a user I cannot login because the password field is empty
    Given I am on the login page
    When I enter valid password
    And I left the email field blank
    And I click login button
    Then I received an error message in the fields email

  Scenario: As a user I cannot login because the email and password field is empty
    Given I am on the login page
    When I left the email field blank
    And I left the password field blank
    And I click login button
    Then I received an error message in the fields email and password

  Scenario: As a user I could not log in because I entered an unregistered email and password
    Given I am on the login page
    When I entered an unregistered email
    And I I entered an unregistered password
    And I click login button
    Then I received an error message in the fields email and password

  Scenario: As a user, I failed to log in because I entered a password that didn't use the same capital letters (Case Sensitive)
    Given I am on the login page
    When I enter valid email
    And I entered a valid password but the capital letters were not the same as during registration
    And I click login button
    Then I received an error message in the fields password

  Scenario: as a user I failed to log in because I entered a very short password
    Given I am on the login page
    When I enter valid email
    And I entered a password of less than six letters
    And I click login button
    Then I received an error message in the fields password