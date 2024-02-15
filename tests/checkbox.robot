*** Settings ***

Resource    ../resources/base.resource
   
*** Test Cases ***
Deve marcar as tech que usam Appium
    Start session
    Get started
    Navigate to                 Check e Radio
    Go to                       Checkbox   Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework
    FOR    ${tech}    IN    @{techs}
        Click Checkbox   ${tech}
        Sleep    1
    END
    
    Sleep    3   
    Capture Page Screenshot
    Close session