*** Settings ***
Resource    E:/Robot framework/variables/variorange.robot
Library  SeleniumLibrary


*** Keywords ***
user should login
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Sleep    10
    Page Should Contain    password
    Log To Console  text found
user entered
    Wait Until Page Contains Element    ${name}  5
    Log To Console    user name is found
    Click Element    ${name}
    Log To Console    element is clicked
    Input Text  ${name}  ${data1}
    Log To Console    user name is entered
password enetred
    Wait Until Page Contains Element    ${password}  5
    Log To Console    password is found
    Click Element    ${password}
    Log To Console    password is clicked
    Input Password  ${password}    ${data2}
    Log To Console    password is entered
clicked on login
    Click Element    ${button}
    Log To Console    login is clicked
timelink method
    click on side menu    ${timelink}
    sleep  3s
Different module
    click on side menu  ${reclink}
    Sleep    3s
    Click Element    ${job_dropdown}
    job title drop down
# navigating through dropdown
job title drop down
    FOR  ${i}  IN RANGE  1  20
        Press Keys    none  ARROW_DOWN
        ${element2} =    Run Keyword And Return Status    Element should be visible    ${test}  
        IF  ${element2}
            Wait Until Element Is Visible    ${test}
            Press Keys    ${test}    ENTER
            Exit For Loop
        ELSE
            log  continue
            
        END
        
            
    
        
    
    END
    
    

#user defined method
click on side menu
    [Arguments]  ${element}
    Wait Until Page Contains Element     ${element}    10
    Click Element    ${element}


