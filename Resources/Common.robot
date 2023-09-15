*** Settings ***
Documentation     this test script will take the user information and verifies that user is added
Library           SeleniumLibrary
Documentation     opens a particular browser and URL
Library           SeleniumLibrary

*** Variables ***
${Browser}=     Chrome
${URL}=         https://automationinterface1.front.staging.optimy.net/en/

*** Keywords ***
Begin web test
    Open Browser                        browser=${Browser}
    Go TO                               ${URL}
    Maximize Browser Window
    click button                        css:#cookie-allow-all-button

End web test
    Close Browser

User opens the browser
    click element