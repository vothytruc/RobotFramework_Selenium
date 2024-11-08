Language: en

*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${url}            https://www.saucedemo.com/
${browser}        chrome
${url_Products}    https://www.saucedemo.com/inventory.html
${browser_2}      Edge
${url_item_0}     https://www.saucedemo.com/inventory-item.html?id=0
${url_item_1}     https://www.saucedemo.com/inventory-item.html?id=1
${url_item_2}     https://www.saucedemo.com/inventory-item.html?id=2
${url_item_3}     https://www.saucedemo.com/inventory-item.html?id=3
${url_item_4}     https://www.saucedemo.com/inventory-item.html?id=4
${url_item_5}     https://www.saucedemo.com/inventory-item.html?id=5
${SCROLL_SCRIPT}    window.document.evaluate('//*[@id="inventory_container"]/div/div[3]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true)
${container_xpath}    //*[@id="inventory_container"]/div
${item_class}     inventory_container
${ExpectedColumnCount}    5
${TARGET_SRC}     https://www.saucedemo.com/static/media/sauce-backpack-1200x1500.0a0b85a3.jpg
${container_id}    item_4_img_link

*** Test Cases ***
TC01 - Login and View Item Details with user name: standard_user & password:secret_sauce
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Click Element    //*[@id="item_4_img_link"]
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_4_title_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##item_0_img_link
    Click Element    id=item_0_img_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_0_title_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_img_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_title_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
        ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    Close Browser

TC02_View with user name: performance_glitch_user
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    performance_glitch_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Click Element    id=item_4_img_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_4_title_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##item_0_img_link
    Click Element    id=item_0_img_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_0_title_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_img_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_title_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
        ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    Close Browser

TC03_View with user name: error_user
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    error_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Click Element    id=item_4_img_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_4_title_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##item_0_img_link
    Click Element    id=item_0_img_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_0_title_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_img_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_title_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
        ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    Close Browser

TC04_View with user name: error_user
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    error_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Click Element    id=item_4_img_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_4_title_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##item_0_img_link
    Click Element    id=item_0_img_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_0_title_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_img_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_title_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
        ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    Close Browser

TC05_View with user name: visual_user
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    visual_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Click Element    id=item_4_img_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_4_title_link
    Location Should Be    ${url_item_4}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##item_0_img_link
    Click Element    id=item_0_img_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##Login and View Item Details
    Click Element    id= item_0_title_link
    Location Should Be    ${url_item_0}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_img_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Execute JavaScript    ${SCROLL_SCRIPT}
    sleep    2s
    Click Element    id=item_1_title_link
    Location Should Be    ${url_item_1}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_5_title_link
    Location Should Be    ${url_item_5}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
        ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_2_title_link
    Location Should Be    ${url_item_2}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    ##
    Sleep    2s
    Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    Click Element    id=item_3_title_link
    Location Should Be    ${url_item_3}
    Sleep    2s
    Click Button    id=back-to-products
    Location Should Be    ${url_Products}
    Sleep    2s
    Close Browser

TC06_Check button About
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Click Button    //*[@id="react-burger-menu-btn"]
    Sleep    2s
    Click Element    //*[@id="about_sidebar_link"]
    Sleep    2s
    Location Should Be    https://saucelabs.com/
    Go Back
    Sleep    2s
    Close Browser
