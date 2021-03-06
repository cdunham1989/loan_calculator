require 'account'
require 'borrower'

describe Borrower do

    it 'can be instantiated with an account balance of any figure' do
        @borrower = Borrower.new(Account.new(4000))
        expect(@borrower.account.loan_balance).to eq(4000)
    end

    describe 'default actions' do
        before(:each) do
            @borrower = Borrower.new
        end
    
        it 'is instantiated by defaultwith an account with a balance of 10000' do
            expect(@borrower.account.loan_balance).to eq(10000)
        end

        it 'can make a payment on the loan_balance' do
            @borrower.make_payment(1000)
            expect(@borrower.account.loan_balance).to eq(9000)
        end

        it 'must make a payment above the minimum amount' do
            expect(@borrower.make_payment(1)).to eq("payments must be a number above the minimum amount")
        end

        it 'can see what the minimum payment is' do
            expect(@borrower.minimum_payment).to eq(50)
        end

        it 'will not allow a minimum payment of less than 50' do
            @borrower.make_payment(9000)
            expect(@borrower.minimum_payment).to eq(50)
        end

        it 'will not allow a payment that isnt a number' do
            expect(@borrower.make_payment("cheese")).to eq("payments must be a number above the minimum amount")
        end
    end
end