# To do
# - Has a getter method for retrieving the checking account balance
# - Has a getter method that retrieves the total account balance
# - Has a function that allows the user to withdraw cash
# - Raises an error if a user tries to withdraw more money than they have in the account
# - Raises an error when the user attempts to retrieve the total number of bank accounts
# - Raises an error when the user attempts to set the interest rate
require_relative 'bankacct'
RSpec.describe BankAccount do
	before(:each) do
# before(:each) runs this block once before all examples are run. The code between do and end indicates a block.
	@project1 = BankAccount.new
	@project1.deposit(100, 'checking')
  @project1.deposit(200, 'savings')
	end

  it 'has a getter method for retrieving the checking account balance' do
      check = @project1.check_bal('checking')
      p check
  end

  it 'retrieves the total account balance' do
    check = @project1.total
    p check
  end

  it 'allows the user to withdraw cash' do
    check = @project1.withdraw(50, 'checking')
    p check
  end

  it 'raises error if a user tries to withdraw more money than in account' do
    check = @project1.withdraw(200, 'checking')
    p check
  end

  it 'raises an error when the user attempts to retrieve the total number of bank accounts' do
    check = expect{@project1.num_of_accts}.to raise_error(NoMethodError)
    p check
  end

  it 'raises an error when the user attempts to set the interest rate' do
    check = expect{@project1.interest}.to raise_error(NoMethodError)
    p check
  end


end
