Language: en



*** Settings ***
Library           SeleniumLibrary

*** Tasks ***
TC3_1
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    standard_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    #
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    #
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${items}    Get WebElements    css:.cart_item
    #
    Click Button    //*[@id="checkout"]
    #
    Input Text    //*[@id="first-name"]    Truc
    Input Text    //*[@id="last-name"]    Vo
    Input Text    //*[@id="postal-code"]    24135
    #
    Click Button    //*[@id="continue"]
    Sleep    2
    #
    Click Button    //*[@id="finish"]
    Sleep    2
    #
    Click Button    //*[@id="back-to-products"]
    Sleep    2
    #
    Click Element    //*[@id="shopping_cart_container"]
    Sleep    2
    #
    ${items}    Get WebElements    css:.cart_item
    #
    IF    ${items} == []
        Log    'Giỏ hàng đã được làm mới'
    ELSE
        Log    'Giỏ hàng không được làm mới'
    END
    Close Browser

TC3_2
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    performance_glitch_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    #
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    #
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${items}    Get WebElements    css:.cart_item
    #
    Click Button    //*[@id="checkout"]
    #
    Input Text    //*[@id="first-name"]    Truc
    Input Text    //*[@id="last-name"]    Vo
    Input Text    //*[@id="postal-code"]    24135
    #
    Click Button    //*[@id="continue"]
    Sleep    2
    #
    Click Button    //*[@id="finish"]
    Sleep    2
    #
    Click Button    //*[@id="back-to-products"]
    Sleep    2
    #
    Click Element    //*[@id="shopping_cart_container"]
    Sleep    2
    #
    ${items}    Get WebElements    css:.cart_item
    #
    IF    ${items} == []
        Log    'Giỏ hàng đã được làm mới'
    ELSE
        Log    'Giỏ hàng không được làm mới'
    END
    Close Browser

TC3_3
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    visual_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    #
    ${buttons_addtocart}    Get WebElements    css:.btn.btn_inventory
    FOR    ${button}    IN    @{buttons_addtocart}
        ${button_text}    Get Text    ${button}
        IF    "${button_text}" == "Add to cart"
            Click Button    ${button}
            Sleep    1
        END
    END
    #
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${items}    Get WebElements    css:.cart_item
    #
    Click Button    //*[@id="checkout"]
    #
    Input Text    //*[@id="first-name"]    Truc
    Input Text    //*[@id="last-name"]    Vo
    Input Text    //*[@id="postal-code"]    24135
    #
    Click Button    //*[@id="continue"]
    Sleep    2
    #
    Click Button    //*[@id="finish"]
    Sleep    2
    #
    Click Button    //*[@id="back-to-products"]
    Sleep    2
    #
    Click Element    //*[@id="shopping_cart_container"]
    Sleep    2
    #
    ${items}    Get WebElements    css:.cart_item
    #
    IF    ${items} == []
        Log    'Giỏ hàng đã được làm mới'
    ELSE
        Log    'Giỏ hàng không được làm mới'
    END
    Close Browser
