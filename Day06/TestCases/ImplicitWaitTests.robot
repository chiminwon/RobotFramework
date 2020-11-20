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

    ${implicittime}= get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}= get selenium implicit wait
    log to console  ${implicittime}

    select radio button  Gender  M
    input text  name:FirstName1  David
    input text  name:LastName  John
    input text  name:Email  allen@gmail.com
    input text  name:Password  123456
    input text  name:ConfirmPassword  123456

    close browser


*** Keywords ***


