Feature:select payment method
  As a User
  I want to select payment method
  so that i can be on the payment scan page

  Scenario: As a user, I successfully selected a payment method by logging in first
  Given I am on the main product page by logging in first
  When I click the selected digital wallet radio button
  And i clicked the pay now button
  Then I was redirected to the digital wallet payment scan page

  Scenario: As a user, I successfully selected a payment method by logging in first
  Given I am on the main product page in guest mode
  When i enter the registered email
  And I enter a valid telephone number
  And i is redirected to the login page
  And i log in
    And I clicked on the selected digital wallet radio button
  And i clicked the pay now button
  Then I was redirected to the digital wallet payment scan page

  Scenario: As a user, I successfully selected a payment method using guest mode and entered an email/telephone number that was not registered
  Given I'm on the main product page in guest mode
  When I enter an unregistered email
  And I enter a valid telephone number
  And I clicked on the selected digital wallet radio button
  And i clicked the pay now button
  Then I was redirected to the digital wallet payment scan page

  Scenario: As a user, I failed to select a payment method using guest mode because I entered an invalid email
  Given I'm on the main product page in guest mode
  When i enter a invalid email
  And I enter a valid telephone number
  And I clicked on the selected digital wallet radio button
  And i clicked the pay now button
  Then I received an error message in the email field

  Scenario: As a user, I failed to select a payment method using guest mode because I entered an invalid telephone number
  Given I'm on the main product page in guest mode
  When i enter a valid email
  And I enter a invalid telephone number
  And I clicked on the selected digital wallet radio button
  And i clicked the pay now button
  Then I received an error message in the telephone number field

  Scenario: As a user, I failed to select a payment method using guest mode because I entered an invalid email and telephone number
  Given I'm on the main product page in guest mode
  When i enter invalid email
  And I entered an invalid telephone number
  And I clicked on the selected digital wallet radio button
  And i clicked the pay now button
  Then I received an error message in the email and telephone number fields