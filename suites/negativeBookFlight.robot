*** Settings ***
Library    AppiumLibrary
Suite Setup    Open Flight_App_and_Login
Suite Teardown    Close Flight_App

*** Variables ***
${APPIUM_SERVER_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     15.0
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity
${AUTOMATION_NAME}      UiAutomator2

*** Test Cases ***
Book No Start Date and No End Date
    # Waiting Book Button is Visible
    Wait Until Element Is Visible    id=com.example.myapplication:id/book
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book
    # Click Either Flight or Flight + Hotel
    Click Element    id=com.example.myapplication:id/radioButtonFlightHotel
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book_flight
    # Flight App should not accept the book, but it continues to the next step anyway
    Sleep    5
    # Close app for next test case
    Close Flight_App

Book No Flight or Flight_Hotel
    # Open Flight App and login
    Open Flight_App_and_Login
    # Waiting Book Button is Visible
    Wait Until Element Is Visible    id=com.example.myapplication:id/book
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book
    # Click Start Date
    Click Element    id=com.example.myapplication:id/textStartDate
    # Pick Start Date
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="25 August 2019"]
    Click Element    xpath=//android.view.View[@content-desc="25 August 2019"]
    # Click OK
    Click Element    id=android:id/button1
    # Click End Date
    Click Element    id=com.example.myapplication:id/textEndDate
    # Pick End Date
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="31 August 2019"]
    Click Element    xpath=//android.view.View[@content-desc="31 August 2019"]
    # Click OK
    Click Element    id=android:id/button1
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book_flight
    # Flight App should not accept the book, but it continues to the next step anyway
    Sleep    5
    # Close app for next test case
    Close Flight_App

Book No Price
    # Open Flight App and login
    Open Flight_App_and_Login
    # Waiting Book Button is Visible
    Wait Until Element Is Visible    id=com.example.myapplication:id/book
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book
    # Click Start Date
    Click Element    id=com.example.myapplication:id/textStartDate
    # Pick Start Date
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="25 August 2019"]
    Click Element    xpath=//android.view.View[@content-desc="25 August 2019"]
    # Click OK
    Click Element    id=android:id/button1
    # Click End Date
    Click Element    id=com.example.myapplication:id/textEndDate
    # Pick End Date
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="31 August 2019"]
    Click Element    xpath=//android.view.View[@content-desc="31 August 2019"]
    # Click OK
    Click Element    id=android:id/button1
    # Click Either Flight or Flight + Hotel
    Click Element    id=com.example.myapplication:id/radioButtonFlightHotel
    # Click Book Button
    Click Element    id=com.example.myapplication:id/book_flight
    # Wait and Click Confirm Button
    Wait Until Element Is Visible    id=com.example.myapplication:id/confirm_order
    Click Element    id=com.example.myapplication:id/confirm_order
    # Flight App should not confirm the book, but it continues to the next step anyway
    Sleep    5

*** Keywords ***
Open Flight_App_and_Login
    Set Appium Timeout    10
    Open Application       ${APPIUM_SERVER_URL}
    ...                    automationName=${AUTOMATION_NAME}
    ...                    platformName=${PLATFORM_NAME}
    ...                    platformVersion=${PLATFORM_VERSION}
    ...                    deviceName=${DEVICE_NAME}
    ...                    appPackage=${APP_PACKAGE}
    ...                    appActivity=${APP_ACTIVITY}
    ...                    autoGrantPermissions=true
    Sleep    2
    Wait Until Element Is Visible    id=com.example.myapplication:id/toolbar
    Click Element                    id=com.example.myapplication:id/login
    Input Text                       //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@ngendigital.com
    Input Text                       id=com.example.myapplication:id/password    abc123
    Click Element                    id=com.example.myapplication:id/signIn
    Wait Until Element Is Visible    id=com.example.myapplication:id/textView    10
    Element Should Be Visible        id=com.example.myapplication:id/textView

Close Flight_App
    Close Application