*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulato
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=RX8NA0HAF1L
    ...                 autoGrantPermissions=true
    
Get started
    Wait Until Page Contains    ${START}    10
    
    Click Text                  ${START}
    
Navigate to
    [Arguments]    ${menu_item}
    ${menu}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${menu}    5
    Click Element                    ${menu}
    
    ${menu_bnt_simples}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/tvItemTitle"][@text="${menu_item}"]
    Wait Until Element Is Visible    ${menu_bnt_simples}    5
    Click Element                    ${menu_bnt_simples}   

Go to
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains      ${item}    5
    Click Text                    ${item}
    Wait Until Page Contains      ${checkpoint}      5
     

Close session
    Close Application

Click Checkbox
    [Arguments]    ${tech}
    Click Element    xpath=//android.widget.CheckBox[contains(@text, "${tech}")]

Click Radio
    [Arguments]    ${linguagem}
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "${linguagem}")]