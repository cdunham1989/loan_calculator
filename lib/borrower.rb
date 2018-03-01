class Borrower
    attr_reader :account

    def initialize(account = Account.new(10000))
        @account = account
    end

    def make_payment(amount)
        @account.receive_payment(amount)
    end

    def minimum_payment
        @account.loan_balance/200 < 50 ? minimum_payment = 50 : minimum_payment = @account.loan_balance/200
    end
end