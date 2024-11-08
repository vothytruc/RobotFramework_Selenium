Language: En

*** Settings ***
Library           SeleniumLibrary

*** Tasks ***
TC1_1
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    standard_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    ${buttons_remove}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_remove}
        ${button_text}    Get Text    ${button}
        Should Be Equal As Strings    ${button_text}    Remove
    END
    Close Browser

TC1_2
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    problem_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    ${buttons_remove}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_remove}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" != "Remove"
            ${button_id}    Get Element Attribute    ${button}    id
        END
    END
    Close Browser

TC1_3
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    performance_glitch_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    ${buttons_remove}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_remove}
        ${button_text}    Get Text    ${button}
        Should Be Equal As Strings    ${button_text}    Remove
    END
    Close Browser

TC1_4
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    error_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    ${buttons_remove}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_remove}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" != "Remove"
            ${button_id}    Get Element Attribute    ${button}    id
        END
    END
    Close Browser

TC1_5
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    visual_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    ${buttons_remove}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_remove}
        ${button_text}    Get Text    ${button}
        Should Be Equal As Strings    ${button_text}    Remove
    END
    Close Browser
