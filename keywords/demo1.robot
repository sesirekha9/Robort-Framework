*** Settings ***
Library  SeleniumLibrary
Resource    E:/Robot framework/variables/vari1.robot

*** Keywords ***
browser should be opened
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${search}    5
    Click Element    ${search}
    Input Text    ${search}    telugu songs
    Click Element    ${search}
