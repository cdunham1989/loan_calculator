class Account
    attr_reader :loan_balance

    def initialize(loan_balance)
        @loan_balance = loan_balance
    end

    def receive_payment(amount)
        @loan_balance -= amount
    end
end