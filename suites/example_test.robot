*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP}                  C:/Users/farro/Downloads/flightApp.apk
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity
${USERNAME}             support@ngendigital.com
${PASSWORD}             abc123

*** Test Cases ***
Login to Application
    [Documentation]    Test login untuk aplikasi Android
    Open Application                 ${REMOTE_URL}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}      app=${APP}      appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Click Element                    id=com.example.myapplication:id/login
    Input Text                       xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    ${USERNAME}
    Input Text                       id=com.example.myapplication:id/password    ${PASSWORD}
    Click Element                    id=com.example.myapplication:id/signIn
    Wait Until Element Is Visible    id=com.example.myapplication:id/textView    10
    Close Application
