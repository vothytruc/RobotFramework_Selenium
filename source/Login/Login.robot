Language: en

*** Settings ***
Library           SeleniumLibrary
Library           String
Library           DateTime
Library           Collections

*** Variables ***
${url}            https://www.saucedemo.com/
${browser}        chrome
${url_Products}    https://www.saucedemo.com/inventory.html
${browser_2}      Edge
${PRODUCT_PAGE_ELEMENT}    //*[@id="inventory_container"]/div/div[1]
${MAX_LOAD_TIME}    1

*** Test Cases ***
TC01_Login success
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser
    Sleep    2s

TC01_2 Login success
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    problem_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser
    Sleep    2s

TC01_3 Login success
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    performance_glitch_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser
    Sleep    2s

TC01_4 Login success
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    error_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser
    Sleep    2s

TC01_5 Login success
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    visual_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser

TC02 Empty username
    Open Browser    ${url}    ${browser}
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Username is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03 Empty password
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03_1Empty password
    #username :locked_out_user
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    locked_out_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03_2 Empty password
    # username :problem_user
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    problem_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03_3Empty password
    # username :performance_glitch_user
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    performance_glitch_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03_4Empty password
    # username :error_user
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    error_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC03_5 Trống password
    # username :visual_user
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    visual_user
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Password is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC04_Usernames can contain spaces
    # username có thể chứa khoảng trắng, bất kì chữ cái nào từ a đến z, từ A đến Z, bất kì số nào từ 0 đến 9 và một số kí tự đặc biệt ( @, . )
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user${SPACE}
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Username and password do not match any user in this service    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC05_Password can contain spaces
    # password có thể chứa khoảng trắng, bất kì chữ cái nào từ a đến z, từ A đến Z, bất kì số nào từ 0 đến 9 và một số kí tự đặc biệt ( @, . )
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce${SPACE}    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Username and password do not match any user in this service    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC06_Username begins with a number or special character.
    #username bắt đầu bằng số hoặc kí tự đặc biệt.
    Open Browser    ${url}    ${browser}
    Input Text    id=user-name    standard_user
    Input Password    id=password    sé cret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Username and password do not match any user in this service    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC07_Access the page without usename and password
    # Truy cập trang mà không cần đăng nhập
    Open Browser    ${url}    ${browser}
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    ${error_message} =    Get Text    //div[@class="error-message-container error"]    # Lấy nội dung của thông báo lỗi
    Should Be Equal As Strings    ${error_message}    Epic sadface: Username is required    # Kiểm tra thông báo lỗi
    Sleep    2s
    Close Browser

TC08_The website works on all popular browsers.
    Open Browser    ${url}    ${browser_2}
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce    # Nhập mật khẩu
    Click Button    id=login-button    # Nhấn Submit
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang mới hay không
    Sleep    2s
    Close Browser

TC09_Check Page Load Performance After Login
    [Documentation]    Kiểm tra thời gian tải trang xem sản phẩm sau khi đăng nhập.
    Open Browser And Login
    ${page_load_time}    Measure Page Load Time
    Should Be True    ${page_load_time} < ${MAX_LOAD_TIME}    Trang tải quá chậm: ${page_load_time}s
    Close Browser

*** Keywords ***
Open Browser And Login
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce    # Thay đổi thành Input Text để đồng nhất
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}    # Kiểm tra xem đã chuyển hướng đến trang sản phẩm hay không
    Sleep    2s

Measure Page Load Time
    ${start_time}    Get Current Date    result_format=epoch
    Go To    ${url_Products}
    Wait Until Page Contains Element    ${PRODUCT_PAGE_ELEMENT}    timeout=10
    ${end_time}    Get Current Date    result_format=epoch
    ${page_load_time}    Evaluate    (${end_time} - ${start_time}) / 1000
    Log    Page load time: ${page_load_time}s
    [Return]    ${page_load_time}
