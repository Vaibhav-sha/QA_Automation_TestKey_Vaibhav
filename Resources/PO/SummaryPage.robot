*** Settings ***
Documentation     Conatains all the web elemnets related to form page
Library           SeleniumLibrary



*** Variables ***

*** Keywords ***
verify that summary page is loaded
        page should contain             Summary


