class Borrower
    attr_reader :account

    def initialize(account = Account.new(10000))
        @account = account
    end
    
end