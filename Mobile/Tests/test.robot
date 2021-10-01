*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

***Test Cases***
User should be able to launch flipkart application
    Launch the flipkart application
    Select English language and go to home page
    Click on menu and select all cetegories 
    Click on search and search mobiles and scroll till poco is found
    Click on POCO and add POCO to cart
    Verify if mobile is added to cart

