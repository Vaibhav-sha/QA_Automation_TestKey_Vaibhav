*** Settings ***
Documentation     Conatains all the web elemnets related to form page
Library           SeleniumLibrary



*** Variables ***



*** Keywords ***
"Form" page is opened
    page should contain      Entrance exam

Enter user details
    [Arguments]     ${customerdata}
   Input Text                          css:input[id='629d7b5a-f6a1-5a14-ac1d-21b2fafdbdef']     ${customerdata.FirstName}
   Input Text                          css:input[id='23e5e47e-bab1-5a1e-9929-f180182bda43']     ${customerdata.LastName}
   Input Text                          css:textarea[id='7172c3f2-f508-5f9c-82a1-11ce9d0f3edc::c3f44a2e-72e9-587b-b88c-b5c9fbeed2db']     ${customerdata.Address}
   Input Text                          css:#container_e57df0b5-c2ad-514a-967f-ee8b962f5ed4 div input                                     ${customerdata.Postal}
   sleep                               05s
   @{elements}=         get webelements         css:#ui-id-1
   FOR   ${element}  IN  ${elements}
        ${text}=        get text        ${element}
        Run Keyword If      "${text}" == "1000 - Bruxelles / Brussel"     click element          ${element}
   END
   select from list by value           css:select[id='7e595970-fc12-558c-9eaf-385735fcae6b']                                             ${customerdata.Country}
   choose file                         css:input[type='file']                  D:\\Python project\\QA_Automation_Vaibhav\\image.jpg
   execute javascript                  window.scrollTo(500, 900)
   sleep                               7s
   ${ele}    Get WebElement     css:#f3fa11a5-a516-5cec-9025-b940b1b113d0
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
   select from list by value           css:#field_f801d7d8-0762-5407-95f9-b8c3a793157c           6365118b-637a-5297-b56d-e7c8b9a60ce0
   ${ele1}    Get WebElement     css:input[id='5ab6a927-7b72-5869-acc3-0db0858bc495']
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele1}
   ${ele2}    Get WebElement     css:input[id='36c255b7-8d7c-50b9-8e75-b2ae9a57185b']
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele2}
   ${ele3}    Get WebElement     css:input[id='92dcaa01-633c-5db1-ac87-e003906567ea']
   execute javascript                  window.scrollTo(500, 1100)
   sleep                               3s
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele3}
   ${ele4}    Get WebElement    css:input[id='773e5289-f4b3-5d6d-ac81-5c99e2b39acd']
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele4}
   execute javascript                  window.scrollTo(500, 1900)
   sleep                               3s
   select frame                        css:#cke_1_contents iframe
   input text                          css:body[role='textbox']            if script works fine, hire me directly
   unselect frame
   sleep                               3s



user nvaigate to next page using "Next Screen" button
   ${ele5}    Get WebElement    css:button[id='navButtonNextMobile']
   Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele5}
