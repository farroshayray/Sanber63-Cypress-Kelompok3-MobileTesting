*** Settings ***
Library            AppiumLibrary

*** Variables ***
${URL}                                        http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                              Android
${PLATFORM_VERSION}                           8.1
${DEVICE_NAME}                                emulator-5554
${APP_PACKAGE}                                com.example.myapplication
${APP_ACTIVITY}                               com.example.myapplication.MainActivity

*** Test Cases ***
Negative Sign Out Flight Application
    Open Application    remote_url=${URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}

    #Sign In
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    #Loading
    Wait Until Element Is Visible    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    #Input Username
    Input Text       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    
    ...              text=support@ngendigital.com
    #Input Password
    Input Password   locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...              text=abc123
    #Click Button Sign
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    #Assertion
    Get Matching Xpath Count       xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
    Element Should Contain Text    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"] 
    ...                            expected=Sign Out
    ...                            message=Sign Out     
    #Sign Out
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    #Assertion
    Get Matching Xpath Count       xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
