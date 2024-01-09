*** Settings ***
Resource    ../base/base.robot
Variables   bookpage_locators.yaml     

*** Keywords ***
Verify Book Page Appears
    Wait Until Element Is Visible         ${textonBook_bookPage}

# Untuk "From City"
Click From City
    Click Element                         ${fromcity}

Choose From City - New York
    Wait Until Element Is Visible         ${newyork}
    Click Element                         ${newyork}

Choose From City - Chicago
    Wait Until Element Is Visible         ${chicago}
    Click Element                         ${chicago}

Choose From City - Toronto
    Wait Until Element Is Visible         ${toronto}
    Click Element                         ${toronto}

# Untuk "To City"
Click To City
    Click Element                         ${tocity}    

Choose To City - London
    Wait Until Element Is Visible         ${london}
    Click Element                         ${london}   

Choose To City - Paris
    Wait Until Element Is Visible         ${paris}
    Click Element                         ${paris} 

Choose To City - Ottawa
    Wait Until Element Is Visible         ${ottawa}
    Click Element                         ${ottawa} 

# Untuk "Class"
Click Class
    Click Element                         ${class}                       

Choose Class - Economy
    Wait Until Element Is Visible         ${economy}
    Click Element                         ${economy}

Choose Class - Business
    Wait Until Element Is Visible         ${business}
    Click Element                         ${business}

Choose Class - First
    Wait Until Element Is Visible         ${first}
    Click Element                         ${first}

# Untuk Date
Click Start Date
    Click Element                         ${open_startdate}
    
Choose The Start Date
    Wait Until Element Is Visible         ${choose_startdate}
    Click Element                         ${choose_startdate}
    Click Element                         ${click_ok}

Click End Date
    Click Element                         ${open_enddate}

Choose The End Date
    Wait Until Element Is Visible         ${choose_enddate}
    Click Element                         ${choose_enddate}
    Click Element                         ${click_ok}

# Untuk radio button & checklist
Choose "Flight"
    Click Element                         ${flight_Button}

Choose "Flight + hotel"
    Click Element                         ${flighthotel_Button}

Choose "Day"
    Click Element                         ${day_button}

Click Book
    Click Element                         ${book_Button}

# Untuk Price
Choose Price 1
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price1}

Choose Price 2
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price2}

Choose Price 3
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price3}

Choose Price 4
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price4}

Choose Price 5
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price5}

Choose Price 6
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price6}

Choose Price 7
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price7}

Choose Price 8
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price8}

Choose Price 9
    Wait Until Element Is Visible         ${flightimage}
    Click Element                         ${price9}

# Untuk proses confirm order   
Click Confirm Order
    Click Element                         ${confirmorder_Button}

Verify Order Is Sucess
    Wait Until Element Is Visible         ${confirmorder_text}