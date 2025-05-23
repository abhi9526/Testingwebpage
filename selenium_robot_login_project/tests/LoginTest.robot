*** Settings ***
Library    SeleniumLibrary
Library    custom_browser.py

*** Test Cases ***
Custom Browser Launch
    ${driver}=    Evaluate    open_custom_firefox("https://google.com")    modules=custom_browser
    Sleep    5s
    [Teardown]    Run Keyword    Close Browser
