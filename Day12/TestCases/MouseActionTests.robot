*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}  https://testautomationpractice.blogspot.com/
${url3}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
Testing Mouse Actions
    open browser  ${url}  ${browser}
    maximize browser window

    # Right click or context menu
    open context menu  xpath://span[@class='context-menu-one btn btn-neutral']
    sleep  3

    # Double click action
    go to  ${url2}
    double click element  xpath://button[contains(text(),'Copy Text')]
    sleep  3

    # Drag and Drop
    go to  ${url3}
    drag and drop  id:box6  id:box106
    sleep  3

    close all browsers


*** Keywords ***


