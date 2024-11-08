Language: en


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
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${cart_items}    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products}    Get Length    ${cart_items}
    #
    Click Element    //*[@id="remove-sauce-labs-bike-light"]
    #
    ${cart_items_after_removal} =    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products_after_removal} =    Get Length    ${cart_items_after_removal}
    IF    ${number_of_products} -1 == ${number_of_products_after_removal}
        Log    'Xoá sản phẩm thành công'
    ELSE
        Log    'Xoá sản phẩm thất bại'
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
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${cart_items}    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products}    Get Length    ${cart_items}
    #
    Click Element    //*[@id="remove-sauce-labs-bike-light"]
    #
    ${cart_items_after_removal} =    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products_after_removal} =    Get Length    ${cart_items_after_removal}
    IF    ${number_of_products} -1 == ${number_of_products_after_removal}
        Log    'Xoá sản phẩm thành công'
    ELSE
        Log    'Xoá sản phẩm thất bại'
    END
    Close Browser

TC1_3
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
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${cart_items}    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products}    Get Length    ${cart_items}
    #
    Click Element    //*[@id="remove-sauce-labs-bike-light"]
    #
    ${cart_items_after_removal} =    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products_after_removal} =    Get Length    ${cart_items_after_removal}
    IF    ${number_of_products} -1 == ${number_of_products_after_removal}
        Log    'Xoá sản phẩm thành công'
    ELSE
        Log    'Xoá sản phẩm thất bại'
    END
    Close Browser

TC1_4
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
    Click Element    //*[@id="shopping_cart_container"]
    Wait Until Element Is Visible    //*[@id="cart_contents_container"]    5
    #
    ${cart_items}    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products}    Get Length    ${cart_items}
    #
    Click Element    //*[@id="remove-sauce-labs-bike-light"]
    #
    ${cart_items_after_removal} =    Get WebElements    css:[data-test="inventory-item"]
    ${number_of_products_after_removal} =    Get Length    ${cart_items_after_removal}
    IF    ${number_of_products} -1 == ${number_of_products_after_removal}
        Log    'Xoá sản phẩm thành công'
    ELSE
        Log    'Xoá sản phẩm thất bại'
    END
    Close Browser
