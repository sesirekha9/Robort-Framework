*** Settings ***
Resource    E:/Robot framework/variables/varigoogle.robot
Library  SeleniumLibrary


*** Keywords ***
user should search
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${search}  5
    Click Element    ${search}
    Input Text  ${search}  ${data1}
    Click Element    ${button}