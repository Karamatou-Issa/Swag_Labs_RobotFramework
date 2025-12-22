*** Settings ***
Resource            ../Ressources/Variables.robot
Library                SeleniumLibrary
Library                OperatingSystem



*** Keywords ***
Test connexion
    [Arguments]                    ${username1}
    Open Browser                   ${Swaglab}
    Clear Element Text              id=user-name
    Input Text                      id=user-name                ${username1}
    Clear Element Text              id=password
    Input Password                  id=password                  ${password}
    Click Button                    id=login-button
    Page Should Contain             Products
    Close Browser


Test connexion invalide
    [Arguments]                ${Wronguser}
    Open Browser                   ${Swaglab}
    Clear Element Text              id=user-name
    Input Text                      id=user-name                 ${Wronguser}
    Clear Element Text              id=password
    Input Password                  id=password                  ${password}
    Click Button                    id=login-button
    Page Should Contain             Epic sadface: Username and password do not match any user in this service
    Close Browser


