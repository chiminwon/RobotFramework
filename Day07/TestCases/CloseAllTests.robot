*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
${url2}  http://automationpractice.com/index.php


*** Test Cases ***
MyTestCase
    open browser  ${url}  ${browser}
    maximize browser window

    open browser  ${url2}  ${browser}
    maximize browser window

#    close browser
    close all browser


*** Keywords ***


