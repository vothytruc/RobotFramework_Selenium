*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC1
    #Kiem tra thanh toan khi khong có sp trong gio hang
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    shopping_cart_container
    Click button    checkout
    Page Should Contain    You have not added the product to your cart
    Close browser

TC2
    #Kiem tra thanh toan khi bo trong First Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC3
    #Kiem tra thanh toan khi bo trong Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC4
    #Kiem tra thanh toan khi bo trong Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Postal Code is required
    Close browser

TC5
    #Kiem tra thanh toan khi bo trong First Name, Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC6
    #Kiem tra thanh toan khi bo trong First Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC7
    #Kiem tra thanh toan khi bo trong Last Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC8
    #Kiem tra thanh toan khi bo trong tat ca cac truong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC9
    #Kiem tra thanh toan thanh cong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    Click button    finish
    Page Should Contain    Thank you for your order!
    Close Browser

TC5_10
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    locked_out_user
    Input text    password    secret_sauce
    Click button    login-button
    ${msg}    Get text    xpath://*[@id="login_button_container"]/div/form/div[3]
    Should be equal    ${msg}    Epic sadface: Sorry, this user has been locked out.
    Close Browser

TC5_11
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    shopping_cart_container
    Click button    checkout
    Page Should Contain    You have not added the product to your cart
    Close browser

TC5_12
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_13
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC4_14
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Postal Code is required
    Close browser

TC5_15
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_16
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_17
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_18
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_19
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    Click button    finish
    Page Should Contain    Thank you for your order!
    Close Browser

TC5_20
    #Kiem tra thanh toan khi khong có sp trong gio hang
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    shopping_cart_container
    Click button    checkout
    Page Should Contain    You have not added the product to your cart
    Close browser

TC5_21
    #Kiem tra thanh toan khi bo trong First Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_22
    #Kiem tra thanh toan khi bo trong Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_23
    #Kiem tra thanh toan khi bo trong Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Postal Code is required
    Close browser

TC5_24
    #Kiem tra thanh toan khi bo trong First Name, Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_25
    #Kiem tra thanh toan khi bo trong First Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_26
    #Kiem tra thanh toan khi bo trong Last Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_27
    #Kiem tra thanh toan khi bo trong tat ca cac truong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_28
    #Kiem tra thanh toan thanh cong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    Click button    finish
    Page Should Contain    Thank you for your order!
    Close Browser

TC5_29
    #Kiem tra thanh toan khi khong có sp trong gio hang
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    shopping_cart_container
    Click button    checkout
    Page Should Contain    You have not added the product to your cart
    Close browser

TC5_30
    #Kiem tra thanh toan khi bo trong First Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_31
    #Kiem tra thanh toan khi bo trong Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_32
    #Kiem tra thanh toan khi bo trong Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Postal Code is required
    Close browser

TC5_33
    #Kiem tra thanh toan khi bo trong First Name, Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_34
    #Kiem tra thanh toan khi bo trong First Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_35
    #Kiem tra thanh toan khi bo trong Last Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_36
    #Kiem tra thanh toan khi bo trong tat ca cac truong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_37
    #Kiem tra thanh toan thanh cong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    Click button    finish
    Page Should Contain    Thank you for your order!
    Close Browser

TC5_38
    #Kiem tra thanh toan khi khong có sp trong gio hang
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    shopping_cart_container
    Click button    checkout
    Page Should Contain    You have not added the product to your cart
    Close browser

TC5_39
    #Kiem tra thanh toan khi bo trong First Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_40
    #Kiem tra thanh toan khi bo trong Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_41
    #Kiem tra thanh toan khi bo trong Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Postal Code is required
    Close browser

TC5_42
    #Kiem tra thanh toan khi bo trong First Name, Last Name
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    postal-code    241357
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_43
    #Kiem tra thanh toan khi bo trong First Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    last-name    Nguyen
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_44
    #Kiem tra thanh toan khi bo trong Last Name, Postal Code
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: Last Name is required
    Close browser

TC5_45
    #Kiem tra thanh toan khi bo trong tat ca cac truong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Click button    continue
    ${error_message}    Get Text    xpath://*[@id="checkout_info_container"]/div/form/div[1]/div[4]
    Should Contain    ${error_message}    Error: First Name is required
    Close browser

TC5_46
    #Kiem tra thanh toan thanh cong
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click button    add-to-cart-sauce-labs-backpack
    Click element    shopping_cart_container
    Click button    checkout
    Input text    first-name    Truc
    Input text    last-name    Nguyen
    Input text    postal-code    241357
    Click button    continue
    Click button    finish
    Page Should Contain    Thank you for your order!
    Close Browser
