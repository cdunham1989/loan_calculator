require 'account'

describe Account do
    before(:each) do
        @account = Account.new(10000)
    end

    it 'has the correct opening balance' do
        expect(@account.loan_balance).to eq(10000)
    end
end