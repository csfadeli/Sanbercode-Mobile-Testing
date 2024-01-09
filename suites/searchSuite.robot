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

*** Test Case ***
User should be able to search flight number
    Click Search In Home Page
    Input Flight Number
    Click Search
    Verify Flight Details Appears

User should not be able to search using invalid flight number
    Click Search In Home Page
    Input Invalid Flight Number
    Click Search
    Verify User Can't Search