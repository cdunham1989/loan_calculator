require 'account'

describe Account do
    before(:each) do
        @account = Account.new(10000)
    end

    it 'is instantiated with a balance' do
        expect(@account.loan_balance).to eq(10000)
    end

    it 'can display its balance when called' do
        expect(@account.loan_balance).to eq(10000)
    end

    it 'can receive payments and deduce the balance' do
        @account.receive_payment(100)
        expect(@account.loan_balance).to eq(9900)
    end

    it 'can receive interest added to the balance from the bank' do
        @account.receive_interest(100)
        expect(@account.loan_balance).to eq(10100)
    end
end