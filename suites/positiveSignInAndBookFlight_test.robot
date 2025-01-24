# robot -d results suites/positiveSignInAndBookFlight_test.robot
*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          XS7TGUZ9EMX49DQS
# ...    emulator-5554
${APP}                  C:/Users/farro/Downloads/flightApp.apk
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity
${USERNAME}             support@ngendigital.com
${PASSWORD}             abc123


*** Test Cases ***
Login to Application
    [Documentation]    Login Test for Android Device
    Open Application                 ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}      app=${APP}      appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Capture Page Screenshot          filename=positiveSignAndBookFlight.png
    Wait Until Element Is Visible    id=com.example.myapplication:id/toolbar
    Click Element                    id=com.example.myapplication:id/login
    Input Text                       xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    ${USERNAME}
    Input Text                       id=com.example.myapplication:id/password    ${PASSWORD}
    Click Element                    id=com.example.myapplication:id/signIn
    Wait Until Element Is Visible    id=com.example.myapplication:id/textView    10
    Element Should Be Visible        id=com.example.myapplication:id/textView
    Close Application

Book Flight
    [Documentation]    Book Flight for Android Device
    Open Application                 ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}      app=${APP}      appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Capture Page Screenshot          filename=positiveSignAndBookFlight.png
    Wait Until Element Is Visible    id=com.example.myapplication:id/toolbar
    Click Element                    id=com.example.myapplication:id/login
    Input Text                       xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    ${USERNAME}
    Input Text                       id=com.example.myapplication:id/password    ${PASSWORD}
    Click Element                    id=com.example.myapplication:id/signIn
    Wait Until Element Is Visible    id=com.example.myapplication:id/textView    10
    Element Should Be Visible        id=com.example.myapplication:id/textView
    Click Element                    id=com.example.myapplication:id/book
    Wait Until Element Is Visible    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]    10
    Click Element                    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]    10
    Element Should Be Visible        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
    Click Element                    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]    10
    Element Should Be Visible        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]
    Click Element                    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]    10
    Element Should Be Visible        xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]    10
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
    Swipe    start_x=500    start_y=1000    offset_x=500    offset_y=500    duration=500
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2025"]    10
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="2025"]
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="04 August 2025"]    10
    Click Element                    xpath=//android.view.View[@content-desc="04 August 2025"]
    Click Element                    xpath=//android.widget.Button[@resource-id="android:id/button1"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]    10
    Click Element                    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]        10
    Element Text Should Be           xpath=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]    2025
    Click Element                    xpath=//android.view.View[@content-desc="06 August 2025"]
    Click Element                    xpath=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element                    xpath=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]
    Click Element                    xpath=//android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]
    Click Element                    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textToCity"]    10
    Element Should Be Visible        xpath=//android.widget.TextView[@resource-id="com.example.myapplication:id/textToCity"]
    Click Element                    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/price6"]
    Click Element                    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
    Wait Until Element Is Visible    xpath=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]    10
    Element Should Be Visible        xpath=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]

    Close Application