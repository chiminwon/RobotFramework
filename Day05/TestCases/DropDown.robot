*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Drop Down and List Box
    open browser  ${url}  ${browser}
    maximize browser window

    select from list by label  continents  Australia
    sleep  3

    select from list by index  continents  6
#    select from list by value  continents  value

    # List Box
    select from list by label  selenium_commands  Switch Commands
    select from list by label  selenium_commands  WebElement Commands
    sleep  3

    unselect from list by label  selenium_commands  Switch Commands

    sleep  3
    close browser


*** Keywords ***


#robot Day04\TestCases\SpeedTests.robot