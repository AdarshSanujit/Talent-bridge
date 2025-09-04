*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/Common.robot
Suite Setup     Open Browser To Login Page
Suite Teardown  Close All Browsers

*** Test Cases ***
HR Can Post A Job
    [Tags]    jobs
    Login As HR
    Go To    ${BASE_URL}/jobs/post
    Wait Until Page Contains Element    id=title    10s
    Input Text    id=title           QA Engineer (Robot)
    Select From List By Label    id=job_type     Full-time
    Select From List By Label    id=department   Information Technology
    Select From List By Label    id=location     Remote
    Input Text    id=salary_range    8-10 LPA
    Input Text    id=deadline        2030-12-31
    Input Text    id=description     Test and improve product quality using automation and manual testing.
    Input Text    id=requirements    2+ years experience; Python; Robot Framework; Selenium.
    Input Text    id=skills_required    Python, Robot Framework, Selenium, SQL
    Scroll Element Into View    xpath=//button[normalize-space()="Post Job"]
    Click Button    xpath=//button[normalize-space()="Post Job"]
    Wait Until Page Contains    Job posted successfully!    10s
    Go To    ${BASE_URL}/jobs/list
    Wait Until Page Contains    QA Engineer (Robot)    10s
