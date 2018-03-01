require 'account'
require 'bank'
require 'borrower'

describe 'bank' do
    before(:each) do
        @bank = Bank.new
    end

    it 'is instantiated with an empty array of borrowers' do
        expect(@bank.borrowers).to eq([])
    end

    it 'adds a borrower to the list when one is created' do
        @bank.new_borrower("john")
        expect(@bank.borrowers.length).to eq(1)
    end

    it 'can calculate interest to be added to the balance at 1%' do
        @bank.new_borrower("john")
        expect(@bank.calculate_interest).to eq(100)
    end
end
