Feature: Registration Form
  As a user 
  I want to be able to register via Form In order to use service

Background: 
  Given I visit demoqa.com
  And I click on the "Forms" tile
  And I select the "Practice Form" tab
  
Scenario: Should register with correct credentials 
  Given I enter "Name" into the "First Name" field
  And I enter "Lastname" into the "Last Name" field
  And I enter "user@test.com" into the "email" field
  And I select "Male" from "Gender" checkbox
  And I enter "0550502506" into the "Mobile Phone" field
  And I pick "14.05.1984" from "Birth Date" datepicker
  And I enter "Testing" into the "Subject" field
  And I select "Sports, Reading" from "Hobbies" checkbox
  And I select "avatar.png" from "Pictures" folder 
  And I enter "My home address" into the "Current address" text
  And I select "State" from "State" dropdown menu
  And I select "City" from "City" dropdown menu
  When I click on the "Register" button
  Then I should see "Thanks for submitting the form!" dialog
 
Scenario: Should not register with incorrect credentials
  Given I enter "numbers" or "symbols" into the "First Name" field
  And I enter "null" into the "Last Name" field
  And I select "other" from "Gender" checkbox
  And I pick "1920" or older from "Birth Date" datepicker
  When I click on the "Register" button
  Then I should see "Error message" dialog