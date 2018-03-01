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

    def add_interest
        @borrower = borrowers.first
        @borrower.account.receive_interest(self.calculate_interest)
    end
end