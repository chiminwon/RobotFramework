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

    ${time}= get selenium timeout
    log to console  ${time}

    set selenium timeout  10 seconds
    wait until page contains  Register  #default 5 seconds

    select radio button  Gender  M
    input text  name:FirstName  David
    input text  name:LastName  John
    input text  name:Email  allen@gmail.com
    input text  name:Password  123456
    input text  name:ConfirmPassword  123456

    close browser


*** Keywords ***


#robot Day04\TestCases\SpeedTests.robot