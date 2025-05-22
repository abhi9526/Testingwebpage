*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/LoginKeywords.robot

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    chrome

*** Test Cases ***
Successful Login With Valid Credentials
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920x1080

    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
    Input Username
    Input Password
    Click Login
    Page Should Contain Element    class:inventory_list
    Close Browser
