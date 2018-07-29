class MTLibrary(object):
    def __init__(self):
        self._result = '' '''check build '''
        
    def login(self):
        print("Login Successful");
        
    def transfer_money(self,amountToBePaid):
        print("Transfer " + amountToBePaid + " to Jack")
        
    def amount_deducted(self,amountToBePaid):
        current_balance = 5000;
        print("Amount " + str(amountToBePaid) + " is deducted from current balance --> "+str(amountToBePaid)+"-- Current Balance is --> " + str(current_balance-(int(amountToBePaid))));

    def amount_increased(self,amountReceived):
        current_balance = 7000;
        print("Amount " + str(amountReceived) + " is increased in current balance --> "+ str(amountReceived) + "-- Current Balance is --> " + str(current_balance+(int(amountReceived))));