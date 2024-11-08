*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TC6_1
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    standard_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    react-burger-menu-btn
    Sleep    2s
    Click element    logout_sidebar_link
    Page Should Contain Element    login_button_container
    Close browser

TC6_2
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    locked_out_user
    Input text    password    secret_sauce
    Click button    login-button
    ${msg}    Get text    xpath://*[@id="login_button_container"]/div/form/div[3]
    Should be equal    ${msg}    Epic sadface: Sorry, this user has been locked out.
    Close browser

TC6_3
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    problem_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    react-burger-menu-btn
    Sleep    2s
    Click element    logout_sidebar_link
    Page Should Contain Element    login_button_container
    Close browser

TC6_4
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    performance_glitch_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    react-burger-menu-btn
    Sleep    2s
    Click element    logout_sidebar_link
    Page Should Contain Element    login_button_container
    Close browser

TC6_5
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    error_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    react-burger-menu-btn
    Sleep    2s
    Click element    logout_sidebar_link
    Page Should Contain Element    login_button_container
    Close browser

TC6_6
    Open browser    https://www.saucedemo.com/
    Maximize Browser Window
    Input text    user-name    visual_user
    Input text    password    secret_sauce
    Click button    login-button
    Click element    react-burger-menu-btn
    Sleep    2s
    Click element    logout_sidebar_link
    Page Should Contain Element    login_button_container
    Close browser
