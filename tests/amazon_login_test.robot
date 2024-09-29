*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Valid Amazon Login Test
    Open Amazon Login Page
    Input Credentials    ${USERNAME}    ${PASSWORD}
    Verify User Authentication
    Close Browser
