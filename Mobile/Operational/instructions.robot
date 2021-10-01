***Settings***
Library    AppiumLibrary
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

***Keywords***
Launch the flipkart application
    Open Application    ${flipkart_server}    platformName=${proj_name}    platformVersion=${version_device}    deviceName=${name_devide}    app=${app_location}

Select English language and go to home page
    Wait Until Page Contains    English    timeout=40s
    Click Element    ${English_icon}
    Click Element    ${continue}
    Wait Until Element Is Visible   ${back_home}    timeout=40s
    Click ELement    ${back_home} 

Click on menu and select all cetegories 
    Wait Until Element Is Visible   ${menu}    timeout=40s
    Click ELement    ${menu}
    Wait Until Page Contains    All Categories    timeout=40s
    Wait Until Element Is Visible   ${all_category}    timeout=40s
    Click Element    ${all_category}
    sleep  3s

Click on search and search mobiles and scroll till poco is found
    # Wait Until Element Is Visible   ${search}    timeout=40s
    Click Element    ${search}
    Wait Until Page Contains    mobiles    timeout=80s
    Input Text    ${mobiles}    Mobiles
    Wait Until Page Contains    Mobiles    timeout=40s
    Click Element    ${click_mobile}
    Wait Until Page Contains    NOT NOW    timeout=40s
    Click Element    ${not_now}
    Swipe By Percent    50   80   50    10
    Swipe By Percent    50   80   50    10
    Swipe By Percent    50   80   50    10
    Swipe By Percent    50   80   50    10
    # Swipe By Percent    50   80   50    10
    # Swipe By Percent    50   80   50    10
    # Swipe By Percent    50   80   50    10

Click on POCO and add POCO to cart
    Wait Until Page Contains    POCO C3    timeout=40s
    Click Element    ${poco}
    # Wait Until Page Contains    ADD TO CART    timeout=40s
    Click Element    ${addToCart}
    Wait Until Page Contains    ${goToCart}    timeout=80s
    Click Element    ${goToCart}
    
Verify if mobile is added to cart
    [Arguments]    ${VerifyPOCO}
    Wait Until Page Contains    POCO C3    timeout=100s
    Log to console   Poco is added to cart