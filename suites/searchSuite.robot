*** Settings ***
Resource         ../pageObjects/base/base.robot
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/searchPageObject/searchPage.robot
Test Setup       Run Keywords
...              Open Flight Application
...              AND    Login With Valid Credentials
Test Teardown    Close Flight Application
Library          OperatingSystem

*** Variables ***
${VALID_EMAIL}        support@ngendigital.com
${VALID_PASSWORD}     abc123
    

*** Test Case ***
User should be able to search flight number
    Click Search In Home Page
    Input Flight Number
    Click Search
    Verify Flight Details Appears