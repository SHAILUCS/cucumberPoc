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
@HomePageProfile
Feature: Home Page Profile
  As an employee of the company
  I want to see My employee profile home page using my credentials
  Also for different categories of employee, different home page should get displayed

  Background: User navigates to Company home page
    Given I am on the "Login Page" page on URL "http://10.184.40.120/pls/apex/f?p=10132:22::::::"
    Then I should see "UATNGC-ADMIN" message

  Scenario: Successful login with Admin/NGC User
     When I fill in "Username" with "shailendra.rajawat"
    And I fill in "Password" with "Auto$1234"
    And I click on the "Login" button
    Then I am on the "Welcome to Nextgen Clearing" page on URL "http://10.184.40.120/pls/apex/f?p=10132:35"
    And I should see "SHAILENDRA.RAJAWAT" message
		And I should see the "IOTRON" button
		And A method of Another Step Def Class should be called now

   Scenario Outline: Successful login using client user credentials
    When I fill in "Username" with "<username>"
    And I fill in "Password" with "<password>"
    And I click on the "Login" button
    And I should see "<asPerUserPage>" message

     Examples:
      | username    | password   | asPerUserPage                     |
      | AUSTA       | !23        | Welcome AUSTA User! 							 |
      | HKGTC       | 123        | Welcome HKGTC User! 							 |
      | GBROR       | !23        | Welcome GBROR User! 							 |
      | NLDPT       | 123        | Welcome NLDPT User! 							 |
