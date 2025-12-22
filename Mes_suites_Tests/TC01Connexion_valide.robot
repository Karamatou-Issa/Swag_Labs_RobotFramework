*** Settings ***
Resource            ..//Ressources/Keywords.robot
Resource            ..//Ressources/Variables.robot
Library             SeleniumLibrary



*** Test Cases ***
TC01Connexion_valide
    Test connexion                ${username1}




