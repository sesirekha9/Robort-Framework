*** Settings ***
Resource    E:/Robot framework/variables/variguru.robot
Library  SeleniumLibrary


*** Keywords ***
user should login
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${name}  5
    Click Element    ${name}
    Input Text  ${name}  ${data1}
    Wait Until Page Contains Element    ${password}  5
    Click Element    ${password}
    Input Password  ${password}    ${data2}
    Click Element    ${button}