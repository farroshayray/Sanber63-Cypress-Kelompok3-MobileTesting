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