Feature: Test functionality of the login page
  # Scenariu 1: Email neinregistrat + o parola oarecare
  # Scenariu 2: Email none + o parola oarecare
  # Scenariu 3: Email invalid + o parola oarecare

  Scenario: Check that "No customer account found" error message is displayed when user tries to login with unregistered email
    Given I am on the login page
    When I insert "unregistered@yahoo.com" email
    And I insert a password
    And I click on login button
    Then Main error is displayed

  Scenario: Check that "Please enter your email" error message is displayed when user tries to log in without providing an email address
    Given I am on the login page
    When I insert " " email
    And I insert a password
    And I click on login button
    Then Email error is displayed
    And Email error message contains "Please enter your email"

    Scenario: Check that "Wrong email" error message is displayed when user tries to log in with invalid format email
    Given I am on the login page
    When I insert "invalid" email
    And I insert a password
    And I click on login button
    Then Email error is displayed
    And Email error message contains "Wrong email"




