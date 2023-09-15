*** Settings ***
Documentation     Conatains all the web elemnets related to landing page
Resource          ./PO/LandingPage.robot
Resource          ./PO/HomePage.robot
Resource          ./PO/FormPage.robot
Resource          ./PO/SummaryPage.robot

*** Keywords ***
landing page is opened
    LandingPage.verify that page is loaded

user click on login button
    LandingPage.click login button

user provides its credentials
    [Arguments]     ${User_Creds}
    LandingPage.input "user name"    ${User_Creds.Email}
    LandingPage.input "user password"    ${User_Creds.Password}

user is succesfully logged in
    LandingPage.click on login button

Home page is opened
    HomePage.Verify that home page is opened

user clicks on "submit new application" button
    HomePage.click "Submit new button"

user is navigated to second home page
    HomePage.verify that second home page is loaded

user user clicks on "submit new application" button at the bottom
    HomePage.click on "submit new application" button at the bottom

Form page is loaded
    FormPage."Form" page is opened

user enters all the details
    [Arguments]         ${customerdata}
    FormPage.Enter user details     ${customerdata}

user clicks on "Next Screen" button
    FormPage.user nvaigate to next page using "Next Screen" button


user navigate to next page
    SummaryPage.verify that summary page is loaded

