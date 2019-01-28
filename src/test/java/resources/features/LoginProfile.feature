#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@LoginProfile
Feature: Login Profile
  As an employee of the company
  I want to login my employee profile using my credentials
  In order to collaborate with my colleagues

  Background: User navigates to Company home page
    Given I am on the "Login Page" page on URL "http://10.184.40.120/pls/apex/f?p=10132:22::::::"
    Then I should see "UATNGC" message

  Scenario: Successful login
     When I fill in "Username" with "shailendra.rajawat"
    And I fill in "Password" with "Auto$1234"
    And I click on the "Login" button
    Then I am on the "Welcome to Nextgen Clearing" page on URL "http://10.184.40.120/pls/apex/f?p=10132:35"
    And I should see "SHAILENDRA.RAJAWAT" message
		And I should see the "IOTRON" button

   Scenario Outline: Failed login using wrong credentials
    When I fill in "Username" with "<username>"
    And I fill in "Password" with "<password>"
    And I click on the "Login" button
    And I should see "<warning>" message

     Examples:
      | username    | password   | warning                           |
      | Test        | !23        | Incorrect credentials. Try again! |
      | Tset        | 123        | Incorrect credentials. Try again! |
      | Tset        | !23        | Incorrect credentials. Try again! |
      | Test        |            | Please enter password.            |
      |             | 123        | Please enter username.            |
      |             |            | Please enter your credentials.    |