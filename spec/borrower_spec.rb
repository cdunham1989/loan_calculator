require 'borrower'
require 'account'

describe Borrower do

    it 'is instantiated with an account with a balance of 10000' do
        @borrower = Borrower.new
        expect(@borrower.account.loan_balance).to eq(10000)
    end

    it 'can be instantiated with an account balance of any figure' do
        @borrower = Borrower.new(Account.new(4000))
        expect(@borrower.account.loan_balance).to eq(4000)
    end
end