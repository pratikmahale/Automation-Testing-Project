*** Settings ***

Library             SeleniumLibrary
Library             Collections


Suite Setup         Open Browser     https://landmark.taqtics.co   chrome
Suite Teardown      Close Browser  

*** Variables ***
${USERNAME}       intern@taqtics.co
${PASSWORD}       TestIntern@123
${INVALID_USER}   invalid_user@test.com
${INVALID_PASS}   Invalid123

*** Test Cases ***
Valid Login
    Wait Until Element Is Visible   xpath=//input[@id='email']  10s
    Input Text    xpath=//input[@id='email']    ${USERNAME}
    Input Text    xpath=//input[@id='password']    ${PASSWORD}
    Click Button  xpath=//button[@type='submit']
    Wait Until Page Contains   Home  10s
    Close Browser

    
Invalid Login
    Open Browser    https://landmark.taqtics.co     chrome
    Input Text    xpath=//input[@id='email']     ${INVALID_USER}
    Input Text    xpath=//input[@id='password']    ${INVALID_PASS}
    Click Button  xpath=//button[@type='submit']
    Wait Until Page Contains    Not Found    10s
    Close Browser

Missing Credentials
    Open Browser    https://landmark.taqtics.co     chrome
    Click Button   xpath=//button[@type='submit']
    Wait Until Element Is Visible    xpath=//div[@class='ant-form-item-explain-error']   10s
    Page Should Contain    Please input your email!
    Page Should Contain    Please input your Password!
    Close Browser

