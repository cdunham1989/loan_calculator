require 'account'

describe Account do
    before(:each) do
        @account = Account.new(10000)
    end

    it 'has the correct opening balance' do
        expect(@account.loan_balance).to eq(10000)
    end

    it 'can receive payments and deduce the balance' do
        @account.receive_payment(100)
        expect(@account.loan_balance).to eq(9900)
    end

    it 'can calculate interest to be added to the balance at 1%' do
        @account.calculate_interest
        expect(@account.loan_balance).to eq(10100)
    end
end