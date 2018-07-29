*** Settings ***
Library           MTLibrary.py
*** Test Cases ***
Withdraw money from Bank 
	Given Jack submits proofs to the bank to withdraw money 
	When Jack entered 2000 for withdrawal
	Then Bank validate the 2000 with current balance 1000
	And Amount is withdrawn

*** Keywords ***
Jack submits proofs to the bank to withdraw money
	Authorization
	
Jack entered ${amount} for withdrawal
	Withdraw money		${amount}
	
Bank validate the ${amount} with current balance ${currentBalance}	
	Amount verification		${amount}		${currentBalance}

Amount is withdrawn
	Process Done