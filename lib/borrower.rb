class Borrower
    attr_reader :account

    def initialize(account = Account.new(10000))
        @account = account
    end

    def make_payment(amount)
        amount.to_i != 0 && amount >= self.minimum_payment ? @account.receive_payment(amount) : "payments must be a number above the minimum amount"
    end

    def minimum_payment
        @account.loan_balance/200 < 50 ? minimum_payment = 50 : minimum_payment = @account.loan_balance/200
    end

    private

    def is_number?
        self.to_i == self
    end
end