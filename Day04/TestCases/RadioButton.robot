*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    #Selecting Radio buttons
    select radio button  sex  Female
    select radio button  exp  5

    #Selecting Check boxes
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  BlackTea

    sleep  3
    close browser


*** Keywords ***


#robot Day04\TestCases\SpeedTests.robot