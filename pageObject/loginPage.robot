*** Settings ***

*** Variables ***
${VERIFY_USERNAME_TEXT}            com.example.myapplication:id/textView2
${USERNAME_FIELD}                  //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    
${PASSWORD_FIELD}                  //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
${SIGN_IN_LOGINPAGE}               //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

*** Keywords ***
# Verify Login Page Appears
Verify Login Page
    Wait Until Element Is Visible    
    ...    locator=${VERIFY_USERNAME_TEXT}

# Input username
Input Username
    [Arguments]    ${username}
    Input Text    
    ...    locator=${USERNAME_FIELD}
    ...    text=${username}

#Input username blank
Input Username blank
    #[Arguments]    ${username_blank}
    Input Text    
    ...    locator=${USERNAME_FIELD}
    ...    text=

# Input Password
Input Password
    [Arguments]    ${password}
    Input Text    
    ...    locator=${PASSWORD_FIELD}
    ...    text=${password}

#Input password blank
Input Password blank
    #[Arguments]    ${password_blank}
    Input Text    
    ...    locator=${PASSWORD_FIELD}
    ...    text=

# Click Sign In Button on Login Page
Click Sign In Button on Login Page
    Click Element    
    ...    locator=${SIGN_IN_LOGINPAGE}

# Verify Login Error Message Appears
Verify Error Message Sign In
    Wait Until Page Contains    
    ...    text=Invalid username/password

#Clear text
Clear Username Text
    Clear Text    locator=${USERNAME_FIELD}

Clear Password Text
    Clear Text    locator=${PASSWORD_FIELD}