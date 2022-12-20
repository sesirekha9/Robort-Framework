*** Settings ***
Resource   E:/Robot framework/keywords/demogoogle.robot 
Library    SeleniumLibrary

*** Test Cases ***
search in google
    user should search
    