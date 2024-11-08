*** Settings ***
Library           SeleniumLibrary
Library           String
Library           Collections

*** Variables ***
${url}            https://www.saucedemo.com/
${browser}        chrome
${url_Products}    https://www.saucedemo.com/inventory.html
${url_list_product}    xpath=//*[@id="inventory_container"]/div
${SCROLL_SCRIPT}    window.document.evaluate('//*[@id="inventory_container"]/div/div[3]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true)

*** Test Cases ***
TC01 Sort Name (A to Z)
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Select From List By Value    xpath=//*[@id="header_container"]/div[2]/div/span/select    az
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'inventory_item_name')]
    @{elements}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_name')]
    @{names}=    Create List
    FOR    ${element}    IN    @{elements}
        ${name}=    Get Text    ${element}
        Append To List    ${names}    ${name}
    END
    Log    ${names}    # Log the names before sorting
    # Sort the list of names in descending order
    ${sorted_names}=    Evaluate    sorted(${names}, key=lambda x: x.lower())
    Log    ${sorted_names}    # Log the sorted names
    # Close Browser
    Close Browser

TC02 Sort Name (Z to A)
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Select From List By Value    xpath=//*[@id="header_container"]/div[2]/div/span/select    za
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'inventory_item_name')]
    @{elements}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_name')]
    @{names}=    Create List
    FOR    ${element}    IN    @{elements}
        ${name}=    Get Text    ${element}
        Append To List    ${names}    ${name}
    END
    Log    ${names}    # Log the names before sorting
    # Sort the list of names in descending order
    ${sorted_names}=    Evaluate    sorted(${names}, key=lambda x: x.lower(), reverse=True)
    Log    ${sorted_names}    # Log the sorted names
    # Close Browser
    Close Browser

TC03 Price (high to low)
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'inventory_item_price')]
    @{prices}=    Create List
    @{elements_data}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_price')]
    Log    e:@{elements_data}
    Select From List By Value    xpath=//*[@id="header_container"]/div[2]/div/span/select    hilo
    Sleep    2s
    #Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    @{elements_data_sorted}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_price')]
    FOR    ${element}    IN    @{elements_data}
        ${price_text}=    Get Text    ${element}
        ${price}=    Evaluate    float(${price_text.replace('$', '').strip()})
        Append To List    ${prices}    ${price}
    END
    ${prices_data_sorted_values}=    Create List
    FOR    ${element}    IN    @{elements_data_sorted}
        ${price_text}=    Get Text    ${element}
        ${price}=    Evaluate    float(${price_text.replace('$', '').strip()})
        Append To List    ${prices_data_sorted_values}    ${price}
    END
    ${sorted_prices}=    Evaluate    sorted(${prices}, key=lambda x: (float(x) if isinstance(x, str) and x.replace('.', '', 1).isdigit() else x), reverse=True)
    Should Be Equal    ${sorted_prices}    ${prices_data_sorted_values}
    Sleep    5s
    Close Browser

TC04 Price (low to high)
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button
    Sleep    2s
    Location Should Be    ${url_Products}
    Sleep    2s
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'inventory_item_price')]
    @{prices}=    Create List
    @{elements_data}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_price')]
    Log    e:@{elements_data}
    Select From List By Value    xpath=//*[@id="header_container"]/div[2]/div/span/select    lohi
    Sleep    2s
    #Execute JavaScript    ${SCROLL_SCRIPT}
    Sleep    2s
    @{elements_data_sorted}=    Get WebElements    xpath=//div[contains(@class, 'inventory_item_price')]
    FOR    ${element}    IN    @{elements_data}
        ${price_text}=    Get Text    ${element}
        ${price}=    Evaluate    float(${price_text.replace('$', '').strip()})
        Append To List    ${prices}    ${price}
    END
    ${prices_data_sorted_values}=    Create List
    FOR    ${element}    IN    @{elements_data_sorted}
        ${price_text}=    Get Text    ${element}
        ${price}=    Evaluate    float(${price_text.replace('$', '').strip()})
        Append To List    ${prices_data_sorted_values}    ${price}
    END
    ${sorted_prices}=    Evaluate    sorted(${prices}, key=lambda x: (float(x) if isinstance(x, str) and x.replace('.', '', 1).isdigit() else x))
    Should Be Equal    ${sorted_prices}    ${prices_data_sorted_values}
    Sleep    5s
    log    ${sorted_prices}
    Close Browser
