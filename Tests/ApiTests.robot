*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Resource    Resource/Keywords.robot



*** Variables ***
${BASE_URL}    https://landmark.taqtics.co/v1/external
${VALID_EMAIL}    intern@taqtics.co
${VALID_PASS}     TestIntern@123

*** Test Cases ***
Validate Auth Token Generation With Missing Password
    [Documentation]    Test API response when the password field is missing.
    Create Session    taqtics    ${BASE_URL}
    ${payload}=    Create Dictionary    email=${VALID_EMAIL}
    ${response}=    Post Request    taqtics    /generateAuthToken    json=${payload}
    Should Be Equal As Numbers    ${response.status_code}    400
    Log    ${response.json()}

Validate Auth Token Generation With Empty Credentials
    [Documentation]    Test API response when both email and password are empty.
    Create Session    taqtics    ${BASE_URL}
    ${payload}=    Create Dictionary    email=    password=
    ${response}=    Post Request    taqtics    /generateAuthToken    json=${payload}
    Should Be Equal As Numbers    ${response.status_code}    400
    Log    ${response.json()}