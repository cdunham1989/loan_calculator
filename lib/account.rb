class Account

    def initialize(loan_balance)
        @loan_balance = loan_balance
    end

    def loan_balance
        @loan_balance
    end

    def make_payment(amount)
        @loan_balance -= amount
    end

    def calculate_interest
        interest = @loan_balance/100
        @loan_balance += interest
    end
end