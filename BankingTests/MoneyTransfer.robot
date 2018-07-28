*** Settings ***
Library           MTLibrary.py
*** Test Cases ***
Transfer money to Jack 
    Given Login to the online banking portal
    When Transfer 600 to Jack
	Then Amount 600 is deducted from current balance
	Then Amount 600 is increased in current balance of Jack

*** Keywords ***
Login to the online banking portal
	login
	
Transfer ${amountToBePaid} to Jack
	Transfer money		${amountToBePaid}
	
Amount ${amountToBePaid} is deducted from current balance	
	Amount deducted		${amountToBePaid}

Amount ${amountReceived} is increased in current balance of Jack
	Amount increased		${amountReceived}