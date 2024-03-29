*** Settings ***
Resource    ../base/base.robot
Variables   homepage_locators.yaml     

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logo_homePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${signIn_button_homePage}
    Click Element                    ${signIn_button_homePage}

Verify User Is Logged In
    Wait Until Element Is Visible    ${userName_text_homePage}

Click Book Button On Home Page
    Wait Until Element Is Visible    ${book_button_homePage}
    Click Element                    ${book_button_homePage}

Click Search In Home Page
    Wait Until Element Is Visible    ${searchflight_Button_homepage}
    Click Element                    ${searchflight_Button_homepage}  