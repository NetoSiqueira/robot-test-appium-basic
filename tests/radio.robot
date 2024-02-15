*** Settings ***

Resource    ../resources/base.resource
   
*** Test Cases ***
Deve selecionar a linguagem preferida
    Start session
    Get started
    Navigate to                 Check e Radio
    Go to                       Botões de radio   Escolha sua linguagem preferida

    Click Radio    Java
 
    Sleep    3   
    Capture Page Screenshot
    Close session