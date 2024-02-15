*** Settings ***

Resource    ../resources/base.resource
   
*** Test Cases ***
Deve realizar um click simples
    Start session
    Get started
    Navigate to                 Clique em Botões
    Go to                       Clique simples    Botão clique simples

    Click Text                  CLIQUE SIMPLES
    Wait Until Page Contains    Isso é um clique simples
    Capture Page Screenshot
    Close session
    
Deve realizar um clique longo
    [Tags]    long

    Start session
    Get started
    Navigate to                 Clique em Botões
    Go to                       Clique longo    Botão clique longo

    ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click
    
    ${positions}    Get Element Location    ${locator}

    Tap With Positions    1000    ${${positions}[x], ${positions}[y]}
    Wait Until Page Contains    Isso é um clique longo
    Capture Page Screenshot

    Close session