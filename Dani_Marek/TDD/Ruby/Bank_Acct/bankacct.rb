# We are going to create a BankAccount class. This class will recreate some of the common account transactions that normally occur for a bank account such as displaying your account number, checking and savings amount, total amount. Of course, there are also methods to invoke such as depositing a check, checking your balance, withdrawing money
# Add an interest_rate attribute that is not accessible by the user. Set it to 0.01
# BankAccount should have a method called account_information that displays the users account number, total money, checking account balance, saving account balance and interest rate
# A user should not be able to set any attributes from the BankAccount class
# BankAccount should have a method that returns a user's account number, account number should be generated by a private method, account number should be random
 # Add an interest_rate attribute that is not accessible by the user. Set it to 0.01
# A user should not be able to set any attributes from the BankAccount class
class BankAccount
	attr_reader :checking, :savings, :acct_num
	@@num_of_accts = 0
	def initialize
		@checking = 0
		@savings = 0
		@acct_num = generate_acct
		@@num_of_accts += 1
		@interest = 0.01
	end

# BankAccount should have a method that returns the user's checking account balance
# BankAccount should have a method that returns the user's saving account balance
def check_bal acct
	if acct == 'checking'
		return @checking
	elsif acct == 'savings'
		return @savings
	else
		puts '1, Error, no account!'
	end
	self
end

 # BankAccount should allow a user to deposit money into either their checking or saving account
 def deposit(amt, acct)
 	if acct == 'checking'
 		@checking += amt
 		return
 	elsif acct == 'savings'
 		@savings += amt
 		return
 	end
	puts 'Error, no account selected!'
 	self
 end

 # BankAccount should allow a user to withdraw money from one of their accounts, return an error if there are insufficient funds
def withdraw(amt, acct)
	if acct == 'savings'
		if amt > @savings
			puts 'Insufficient Funds, #{@savings} available'
			return self
		end
		@savings -= amt
	elsif acct == 'checking'
		if amt > @checking
			puts 'Insufficient Funds, #{@checking} available'
			return self
		end
		@checking -= amt
	else
		puts 'Error, no account!'
	end
	self
end

 # BankAccount should allow the user to view the total amount of money they have at the bank
 def total
 	puts "Total: #{@checking + @savings}"
 end
		
 # BankAccount should track how many accounts the bank currently has
def self.num_of_accts
	return @@num_of_accts
end

 # BankAccount should have a method called account_information that displays the users account number, total money, checking account balance, saving account balance and interest rate
 def account_information
 	puts "Account Number: #{@acct_num}, Total Money: #{@checking + @savings}, Checking: #{@checking}, Savings: #{@savings}, Interest Rate: #{@interest}"
 end

private
	def generate_acct
		account = (0..10).map { rand(0..9) }.join("")
		return account
	end

end

 # bank = BankAccount.new

 # bank.deposit(200, 'savings')
 # bank.deposit(500, 'checking')

 # puts bank.check_bal('checking')
 # puts bank.check_bal('savings')

 # puts bank.total

 # puts bank.acct_num

 # puts BankAccount.num_of_accts

 # puts bank.account_information 