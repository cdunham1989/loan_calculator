require 'borrower'
require 'account'

describe Borrower do
    before(:each) do
        @borrower = Borrower.new
    end

    it 'is instantiated with an account with a balance of 10000' do
        expect(@borrower.account.loan_balance).to eq(10000)
    end
end