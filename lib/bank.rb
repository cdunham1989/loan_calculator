class Bank
    attr_reader :borrowers

    def initialize(borrowers = [])
        @borrowers = borrowers
    end

    def new_borrower(name)
        @borrowers << (name = Borrower.new)
    end

    def calculate_interest
        interest = @borrowers.first.account.loan_balance/100
    end

    def add_interest
        @borrowers.first.account.receive_interest(self.calculate_interest)
    end

    def minimum_payment
        minimum_payment = @borrowers.first.account.loan_balance/200
    end

    def add_charge
        @borrowers.first.account.receive_charge
    end
end