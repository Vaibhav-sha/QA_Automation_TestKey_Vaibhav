*** Settings ***
Documentation     Conatains all the web elemnets related to landing page
Library           SeleniumLibrary

*** Variables ***



*** Keywords ***
verify that page is loaded
    wait until element is visible       css:a[href='project/new/']

click login button
    click link                          Login

input "user name"
    [Arguments]     ${useremail}
    input text                          css:#login-email             ${useremail}

input "user password"
    [Arguments]    ${userpassword}
    input password                      css:#login-password          ${userpassword}

click on login button
    click button                        Login