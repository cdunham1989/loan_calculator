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

end
