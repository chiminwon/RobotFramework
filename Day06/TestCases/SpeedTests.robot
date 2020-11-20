*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    open browser  ${url}  ${browser}
    maximize browser window

    ${speed}= get selenium speed
    log to console  ${speed}

    set selenium speed  3 seconds
#    sleep  3

    select radio button  Gender  M

    input text  name:FirstName  David
    input text  name:LastName  John
    input text  name:Email  allen@gmail.com
    input text  name:Password  123456
    input text  name:ConfirmPassword  123456

    log to console  ${speed}

    close browser


*** Keywords ***


#robot Day04\TestCases\SpeedTests.robot