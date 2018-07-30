*** Settings ***
Library           MTLibrary.py
*** Test Cases ***
Transfer money to Jack 
    Given Login to the online banking portal
    When Transfer 600 to Jack
	Then Amount 800 is deducted from current balance
	Then Amount 800 is increased in current balance of Jack
	
Withdraw money from Bank 
	Given Jack submits proofs to the bank to withdraw money 
	When Jack entered 2000 for withdrawal
	Then Bank validate the 2000 with current balance 1000
	And Amount is withdrawn

*** Keywords ***
Login to the online banking portal
	login
	
Transfer ${amountToBePaid} to Jack
	Transfer money		${amountToBePaid}
	
Amount ${amountToBePaid} is deducted from current balance	
	Amount deducted		${amountToBePaid}
	
Jack submits proofs to the bank to withdraw money
	Authorization
	
Jack entered ${amount} for withdrawal
	Withdraw money		${amount}
	
Bank validate the ${amount} with current balance ${currentBalance}	
	Amount verification		${amount}		${currentBalance}

Amount is withdrawn
	Process Done

Amount ${amountReceived} is increased in current balance of Jack
	Amount increased		${amountReceived}
