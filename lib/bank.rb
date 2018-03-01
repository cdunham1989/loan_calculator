class Bank
    attr_reader :borrowers

    def initialize(borrowers = [])
        @borrowers = borrowers
    end

    def new_borrower(name)
        @borrowers << (name = Borrower.new)
    end

    def calculate_interest
        @borrower = borrowers.first
        interest = @borrower.account.loan_balance/100
    end

end