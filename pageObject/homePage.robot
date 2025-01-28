*** Settings ***


*** Variables ***
${HOME_PAGE_ICON}          com.example.myapplication:id/imageView4
${SIGN_IN_HOMEPAGE}        com.example.myapplication:id/login


*** Keywords ***
#Verify Home Page Appears
Verify Home Page
    Wait Until Element Is Visible    
    ...    locator=${HOME_PAGE_ICON}

# Click Sign In Button on Home Page
Click Sign In Button on Home Page
    Click Element    
    ...    locator=${SIGN_IN_HOMEPAGE}