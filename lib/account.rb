class Account
    attr_reader :loan_balance

    def initialize(loan_balance)
        @loan_balance = loan_balance
    end

    def receive_payment(amount)
        @loan_balance -= amount
    end

    def receive_interest(amount)
        @loan_balance += amount
    end

    def receive_charge
        @loan_balance += 10
    end
end