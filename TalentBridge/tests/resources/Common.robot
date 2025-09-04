*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    http://localhost:5000

*** Keywords ***
Open Browser To Login Page
    [Documentation]    Opens the browser at the TalentBridge login page.
    Open Browser    ${BASE_URL}/auth/login    chrome
    Maximize Browser Window
    Wait Until Page Contains    Login to TalentBridge    10s

Login As HR
    [Documentation]    Logs in using the seeded admin HR account.
    Input Text    id=email    admin@talentbridge.com
    Input Password    id=password    admin123
    Click Button    xpath=//button[normalize-space()="Login"]
    Wait Until Page Contains    HR Dashboard    10s
