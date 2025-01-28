*** Settings ***
Resource            ../pageObject/base.robot
Resource            ../pageObject/homePage.robot
Resource            ../pageObject/loginPage.robot
Suite Setup          Run Keywords    Open Flight Application    AND    Verify Home Page    AND    Click Sign In Button on Home Page
Suite Teardown       Close Flight Application
Test Setup           Run Keywords    Clear Username Text    AND    Clear Password Text


*** Test Cases ***
User Sign In with invalid Username
    #Click Sign In Button on Home Page
    Verify Login Page
    Input Username    support.com
    Input Password    abc123
    Click Sign In Button on Login Page
    Verify Error Message Sign In

User Sign In with wrong Password
    #Click Sign In Button on Home Page
    Verify Login Page
    Input Username    support@ngendigital.com
    Input Password    pass321
    Click Sign In Button on Login Page
    Verify Error Message Sign In

User Sign In with Empty Username
    #Click Sign In Button on Home Page
    Verify Login Page
    Input Username blank
    Input Password    abc123
    Click Sign In Button on Login Page
    Verify Error Message Sign In

User Sign In with Empty Password
    #Click Sign In Button on Home Page
    Verify Login Page
    Input Username    support@ngendigital.com
    Input Password blank
    Click Sign In Button on Login Page
    Verify Error Message Sign In

User Sign In with Empty Username and Password
    #Click Sign In Button on Home Page
    Verify Login Page
    Input Username blank
    Input Password blank
    Click Sign In Button on Login Page
    Verify Error Message Sign In


    
