***Settings***
Library    AppiumLibrary

***Test Cases***
User should be able to launch flipkart application
    Launch the flipkart application
    Select English language and go to home page
    Click on menu and select all cetegories 
    Click on search and search mobiles and scroll till poco is found
    Click on POCO and add POCO to cart
    Verify if mobile is added to cart

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

Click on search and search mobiles and scroll till poco is found
    Wait Until Element Is Visible   ${search}    timeout=40s
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

***Variables***
${flipkart_server}=  http://localhost:4723/wd/hub
${name_devide}=  emulator-5554
${version_device}=  9.0
${app_location}=  D:\\Assignment9.1\\Mobile\\Flipkart-7.18.apk
${proj_name}=  Android
${English_icon}=  xpath= //android.widget.TextView[@text="English"]
${continue}=  xpath= //android.widget.Button[@text="CONTINUE"]
${back_home}=  xpath= //*[@resource-id="com.flipkart.android:id/custom_back_icon"]
${menu}=  xpath= //android.widget.ImageButton[@content-desc="Drawer"]
${all_category}=  xpath= //android.widget.TextView[@text="All Categories"]
${search}=  id= com.flipkart.android:id/search_icon
${mobiles}=  id= com.flipkart.android:id/search_autoCompleteTextView
${click_mobile}=  id= com.flipkart.android:id/txt_subtitle
${not_now}=  xpath= //*[@resource-id="com.flipkart.android:id/not_now_button"]
${poco}=  xpath=  //android.widget.TextView[@text="POCO C3 (Matte Black, 64 GB)"]
${addToCart}=  xpath= //android.widget.TextView[@text="ADD TO CART"]
${goToCart}=  xpath= //android.widget.TextView[@text="GO TO CART"]
${VerifyPOCO}=  POCO