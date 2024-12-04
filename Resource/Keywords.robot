*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${BASE_URL}    https://landmark.taqtics.co/v1/external

*** Keywords ***
Create Auth Token Request
    [Arguments]    ${email}    ${password}
    Create Session    taqtics    ${BASE_URL}
    ${payload}=    Create Dictionary    email=${email}    password=${password}
    ${response}=    Post Request    taqtics    /generateAuthToken    json=${payload}
    [Return]    ${response}

Validate Response Code
    [Arguments]    ${response}    ${expected_status}
    Should Be Equal As Numbers    ${response.status_code}    ${expected_status}
    Log    ${response.status_code}
