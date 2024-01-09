*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookPage.robot
Test Setup       Run Keywords
...              Open Flight Application
...              AND    Login With Valid Credentials
Test Teardown    Close Flight Application    

*** Test Case ***
User should be able to book flight - One Way, New York to Paris, Economy Class, Flight only
    Click Book Button On Home Page 
    Verify Book Page Appears
    Click From City
    Choose From City - New York
    Click To City
    Choose To City - Paris
    Click Class
    Choose Class - Economy
    Click Start Date
    Choose The Start Date
    Choose "Flight"
    Click Book
    Choose Price 1
    Click Confirm Order
    Verify Order Is Sucess

User should be able to book flight - One Way, Chicago to Ottawa, Business Class, Flight only
    Click Book Button On Home Page
    Verify Book Page Appears
    Click From City
    Choose From City - Chicago
    Click To City
    Choose To City - Ottawa
    Click Class
    Choose Class - Business
    Click Start Date
    Choose The Start Date
    Choose "Flight"
    Click Book
    Choose Price 1
    Click Confirm Order
    Verify Order Is Sucess

User should be able to book flight - One Way, Toronto to London, First Class, Flight only, with Day
    Click Book Button On Home Page
    Verify Book Page Appears
    Click From City
    Choose From City - Toronto
    Click To City
    Choose To City - London
    Click Class
    Choose Class - First
    Click Start Date
    Choose The Start Date
    Choose "Flight"
    Choose "Day"
    Click Book
    Choose Price 1
    Click Confirm Order
    Verify Order Is Sucess