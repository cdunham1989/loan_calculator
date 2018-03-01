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

    describe 'with a borrower' do
        before(:each) do
            @bank.new_borrower("john")
        end

        it 'adds a borrower to the list when one is created' do
            expect(@bank.borrowers.length).to eq(1)
        end

        it 'can calculate interest to be added to the balance at 1%' do
            expect(@bank.calculate_interest).to eq(100)
        end

        it 'can add interest to the balance of the loan' do
            @bank.add_interest
            expect(@bank.borrowers.first.account.loan_balance).to eq(10100)
        end
    end
end
