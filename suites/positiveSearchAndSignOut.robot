*** Settings ***
Library    AppiumLibrary
Suite Setup    Open Flight Application and Login

*** Keywords ***
Open Flight Application and Login
    Open Application    remote_url=${APPIUM_SERVER_URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}
    Sleep    2
    Wait Until Element Is Visible    id=com.example.myapplication:id/toolbar
    Click Element                    id=com.example.myapplication:id/login
    Input Text                       //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@ngendigital.com
    Input Text                       id=com.example.myapplication:id/password    abc123
    Click Element                    id=com.example.myapplication:id/signIn
    Wait Until Element Is Visible    id=com.example.myapplication:id/textView    10
    Element Should Be Visible        id=com.example.myapplication:id/textView
    
*** Variables ***
${APPIUM_SERVER_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9.0
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity

*** Test Cases ***
Positive Search
    Wait Until Element Is Visible    id=com.example.myapplication:id/search_flight
    Click Element    id=com.example.myapplication:id/search_flight
    Wait Until Element Is Visible    id=com.example.myapplication:id/searchFlight
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    ...           text=DA935
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
    Capture Page Screenshot          filename=PositiveSearch.png
    Press Keycode    4 
    Press Keycode    4 
Positive Signout
    Wait Until Element Is Visible    id=com.example.myapplication:id/login
    Sleep    3
    Click Element    id=com.example.myapplication:id/login
    Wait Until Element Is Visible    id=com.example.myapplication:id/imageView4
    Sleep    3
    Close Application
