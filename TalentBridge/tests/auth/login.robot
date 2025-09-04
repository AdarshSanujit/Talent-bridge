*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/Common.robot
Suite Setup     Open Browser To Login Page
Suite Teardown  Close All Browsers

*** Test Cases ***
HR Can Log In
    [Tags]    smoke
    Login As HR
    Title Should Be    HR Dashboard - TalentBridge
    Page Should Contain    Manage jobs
