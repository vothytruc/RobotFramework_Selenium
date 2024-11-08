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
    Add Product To Cart    add-to-cart-sauce-labs-backpack
    Sleep    1
    Verify Cart Badge    1
    Add Product To Cart    add-to-cart-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Add Product To Cart    add-to-cart-sauce-labs-onesie
    Sleep    1
    Verify Cart Badge    3
    Remove Product From Cart    remove-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Close Browser

TC3_2
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    problem_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    Add Product To Cart    add-to-cart-sauce-labs-backpack
    Sleep    1
    Verify Cart Badge    1
    Add Product To Cart    add-to-cart-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Add Product To Cart    add-to-cart-sauce-labs-onesie
    Sleep    1
    Verify Cart Badge    3
    Close Browser

TC3_3
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    error_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    Add Product To Cart    add-to-cart-sauce-labs-backpack
    Sleep    1
    Verify Cart Badge    1
    Add Product To Cart    add-to-cart-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Add Product To Cart    add-to-cart-sauce-labs-onesie
    Sleep    1
    Verify Cart Badge    3
    Close Browser

TC3_4
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Input Text    //input[@id='user-name']    visual_user
    Input Password    //input[@id='password']    secret_sauce
    Click Button    //input[@id='login-button']
    Wait Until Element Is Visible    //div[@id='inventory_container']    5
    Add Product To Cart    add-to-cart-sauce-labs-backpack
    Sleep    1
    Verify Cart Badge    1
    Add Product To Cart    add-to-cart-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Add Product To Cart    add-to-cart-sauce-labs-onesie
    Sleep    1
    Verify Cart Badge    3
    Remove Product From Cart    remove-sauce-labs-bike-light
    Sleep    1
    Verify Cart Badge    2
    Close Browser

*** Keywords ***
Verify Cart Badge
    [Arguments]    ${expected_badge}
    ${cart_badge}    Get Text    //*[@id="shopping_cart_container"]/a/span
    Should Be Equal As Integers    ${cart_badge}    ${expected_badge}

Add Product To Cart
    [Arguments]    ${product_id}
    Click Button    //*[@id="${product_id}"]

Remove Product From Cart
    [Arguments]    ${product_id}
    Click Button    //*[@id="${product_id}"]
