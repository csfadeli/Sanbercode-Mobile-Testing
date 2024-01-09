*** Settings ***
Resource       ../base/base.robot
Resource       ../homePageObject/homePage.robot
Resource       ../loginPageObject/loginPage.robot
Variables      searchpage_locators.yaml 
Library        AppiumLibrary

*** Variables ***
${FLIGHT_NUMBER}              DA935
${INVALID_FLIGHT_NUMBER}      AA123

*** Keywords ***
Input Flight Number
    Wait Until Element Is Visible    ${enterflightNumber}
    Input Text                       ${flightnumber_input}    ${FLIGHT_NUMBER}

Input Invalid Flight Number
    Wait Until Element Is Visible    ${enterflightNumber}
    Input Text                       ${flightnumber_input}    ${INVALID_FLIGHT_NUMBER}

Click Search
    Click Element                    ${searchFlight}

Verify Flight Details Appears
    Wait Until Element Is Visible    ${flightdetails}

Verify User Can't Search
    Wait Until Page Contains         ${invalidsearch_text}