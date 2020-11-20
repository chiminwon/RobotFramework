*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index


*** Test Cases ***
Testing Frame
    open browser  ${url}  ${browser}
    maximize browser window

    select frame  packageListFrame  # id name xpath
    click link  org.openqa.selenium
    unselect frame
    sleep 3

    select frame  packageFrame
    click link  WebDriver
    unselect frame
    sleep 3

    select frame  classFrame
    click link  Help
    unselect frame

    close browser


*** Keywords ***


