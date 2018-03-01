class Bank
    attr_reader :borrowers

    def initialize(borrowers = [])
        @borrowers = borrowers
    end

    def new_borrower(name)
        @borrowers << (name = Borrower.new)
    end

end