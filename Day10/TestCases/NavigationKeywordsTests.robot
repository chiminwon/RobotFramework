*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.google.com
${url2}  http://www.bing.com


*** Test Cases ***
Testing TabbedWindow
    open browser  ${url}  ${browser}
    maximize browser window
    ${loc}=  get location
    log to console  ${loc}
    sleep  3

    go to  ${url2}
    ${loc2}=  get location
    log to console  ${loc2}
    sleep  3

    go to
    ${loc3}=  get location
    log to console  ${loc3}
    sleep  3

    close all browsers


*** Keywords ***


