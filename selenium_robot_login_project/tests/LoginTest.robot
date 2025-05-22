*** Variables ***
${URL}      https://www.saucedemo.com/
${BROWSER}  chrome

*** Test Cases ***
Successful Login With Valid Credentials
    Open Browser    ${URL}    ${BROWSER}    options=--headless --disable-gpu --no-sandbox --disable-dev-shm-usage
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Text    id:password     secret_sauce
    Click Button  id:login-button
    Page Should Contain Element    class:inventory_list
    Close Browser
