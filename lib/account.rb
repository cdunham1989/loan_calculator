class Account
    attr_reader :loan_balance

    def initialize(loan_balance)
        @loan_balance = loan_balance
    end

    def show_balance
        @loan_balance
    end

    def receive_payment(amount)
        @loan_balance -= amount
    end

    def calculate_interest
        interest = @loan_balance/100
        @loan_balance += interest
    end
end