*** Settings ***
Documentation     this test script will take the user information and verifies that user is added
Library           SeleniumLibrary
Resource          ../Resources/Common.robot
Resource          ../Resources/App.robot
Suite Setup        Common.Begin web test
#Test Teardown     Common.End web test


*** Variables ***
&{Credentials}    Email=optimyautomationtester@gmail.com    Password=yRMhojb7
&{User_Data}      FirstName=Vai     LastName=Sha    Address=Bengaluru   Postal=1000     Country=IN


*** Test Cases ***
Click login button and provide credentials
    [Arguments]     ${Credentials}
    Given landing page is opened
    And user click on login button
    When user provides its credentials      ${Credentials}
    Then user is succesfully logged in

click on submit a new application
    Given Home page is opened
    When user clicks on "submit new application" button
    And user is navigated to second home page
    Then user user clicks on "submit new application" button at the bottom

Provide all the details in the form
    [Arguments]         ${User_Data}
    Given Form page is loaded
    When user enters all the details      ${User_Data}
    Then user clicks on "Next Screen" button

