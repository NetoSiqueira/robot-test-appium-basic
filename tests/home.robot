*** Settings ***

Library    AppiumLibrary

*** Test Cases ***


Deve abrir a tela principal
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulato
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=RX8NA0HAF1L
    ...                 autoGrantPermissions=true

    Wait Until Page Contains    Yodapp    10
    Wait Until Page Contains    Mobile Training
    Wait Until Page Contains    by Papito

    Close Application