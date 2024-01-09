*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Test Setup       Run Keywords
...              Open Flight Application
Test Teardown    Close Flight Application

*** Variables ***
${VALID_EMAIL}        support@ngendigital.com
${VALID_PASSWORD}     abc123
${INVALID_EMAIL}      suppot@ngendigital.com
${INVALID_PASSWORD}   ab12
    

*** Test Case ***
User should be able to login with valid credentials
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page        ${VALID_EMAIL}
    Input User Password On Login Page     ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Verify User Is Logged In