*** Settings ***
Resource   E:/Robot framework/keywords/demoguru.robot 
Library    SeleniumLibrary

*** Test Cases ***
login in guru99
    user should login 
    