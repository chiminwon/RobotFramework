*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="C:\\Tools\\workspace\\AutomationTest\\RobotFramework\\Driver\\chromedriver.exe"
    open browser    ${url}  ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id: Email   pavanoltraining@gmail.com
    input text  id: Password    Test@123
    click element   xpath://input[@class='button-1 login-button']


#robot Day01\TestCases\TC1.robot