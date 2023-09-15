*** Settings ***
Documentation     Conatains all the web elemnets related to home page
Library           SeleniumLibrary

*** Variables ***



*** Keywords ***
Verify that home page is opened
    wait until element is visible       css:a[href='project/new/']


click "Submit new button"
    click element                 css:a[href='project/new/']


verify that second home page is loaded
    page should contain         Continue with the submission of an application?

click on "submit new application" button at the bottom
    click element                 css:a[class='btn btn-outline-primary']