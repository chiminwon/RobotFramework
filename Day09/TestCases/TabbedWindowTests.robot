*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html


*** Test Cases ***
Testing TabbedWindow
    open browser  ${url}  ${browser}
    maximize browser window
    click element  xpath://div[@id='Tabbed']//button[@class='btn btn-info'][contains(text(),'click')]
    select window  tile=SeleniumHQ Browser Automation
    click element  xpath://a[contains(text(),'Support')]
    sleep  3
    close all browsers


*** Keywords ***


