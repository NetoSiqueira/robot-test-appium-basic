*** Settings ***

Resource    ../resources/base.resource
Library    ../resources/libs/extend.py

*** Test Cases ***
Deve arrrastar o Skywalke e soltar no topo da lista
    
    Start session
    Get started
    Navigate to    Star Wars
    Go to          Lista    Luke Skywalker

    ${orign}     Set Variable    //android.widget.TextView[@text="@skywalker"]/../../..//*[contains(@resource-id, "drag_handle")]
    ${target}    Set Variable    //android.widget.TextView[@text="@mando"]/../../..//*[contains(@resource-id, "drag_handle")]

    Sleep     3
    

    
    My Drag And Drop    ${orign}    ${target}
    Sleep    3
    
    Close session