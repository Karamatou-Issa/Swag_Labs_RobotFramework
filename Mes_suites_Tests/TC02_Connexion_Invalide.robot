*** Settings ***
Resource            ..//Ressources/Keywords.robot
Resource            ..//Ressources/Variables.robot
Library             SeleniumLibrary


*** Test Cases ***
TC02connexion_invalie
    Test connexion invalide                    ${Wronguser}
