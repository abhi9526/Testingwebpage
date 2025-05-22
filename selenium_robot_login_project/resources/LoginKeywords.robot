*** Keywords ***
Input Username
    Input Text    id=username    standard_user

Input Password
    Input Text    id=password    secret_sauce

Click Login
    Click Button    id=login-button
