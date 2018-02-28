class Account

    def initialize(loan_balance)
        @loan_balance = loan_balance
    end

    def loan_balance
        @loan_balance
    end

    def receive_payment(amount)
        @loan_balance -= amount
    end
end