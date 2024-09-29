*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Amazon Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text    xpath=//input[@id='email']    ${username}
    Click Button    xpath=//input[@id='continue']
    Input Text    xpath=//input[@id='password']    ${password}
    Click Button    xpath=//input[@id='signInSubmit']

Verify User Authentication
    Title Should Be    ${HOME_PAGE_TITLE}
    Element Should Be Visible    xpath=${ACCOUNT_LINK_XPATH}
    User Account Should Be Visible

User Account Should Be Visible
    ${account_name}=    Get Text    xpath=${ACCOUNT_LINK_XPATH}
    Should Contain    ${account_name}    Your Name  # Ensure it contains the expected text
