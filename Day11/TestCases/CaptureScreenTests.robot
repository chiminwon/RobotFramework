*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
Testing CS
    open browser  ${url}  ${browser}
    maximize browser window

    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    capture element screenshot  xpath://div[@id='divLogo']//img  C:\\Tools\\workspace\\AutomationTest\\RobotFramework\\Day11\\TestCases\\logo.png
    capture page screenshot  C:\\Tools\\workspace\\AutomationTest\\RobotFramework\\Day11\\TestCases\\loginTC.png

    close all browsers


*** Keywords ***


