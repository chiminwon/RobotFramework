*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.google.com
${url2}  http://www.bing.com


*** Test Cases ***
Testing MultipleWindows
    open browser  ${url}  ${browser}
    maximize browser window
    sleep  3
    open browser  ${url2}  ${browser}
    maximize browser window

    switch browser  1
    ${title}=  get tile
    log to console  ${title}

    switch browser  2
    ${title2}=  get tile
    log to console  ${title2}

    close all browsers


*** Keywords ***


