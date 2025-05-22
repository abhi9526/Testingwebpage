*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/LoginKeywords.robot

*** Variables ***
${URL}            https://www.saucedemo.com/

*** Test Cases ***
Successful Login With Valid Credentials
    Open Browser    ${URL}    chrome
    ...    options=add_argument(--no-sandbox)
    ...    options=add_argument(--disable-dev-shm-usage)
    ...    options=add_argument(--user-data-dir=/tmp/unique_profile)
    Maximize Browser Window
    Input Username
    Input Password
    Click Login
    Page Should Contain Element    xpath://div[@class='inventory_list']
    Close Browser
