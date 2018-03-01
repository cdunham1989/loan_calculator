class Bank
    attr_reader :borrowers

    def initialize(borrowers = [])
        @borrowers = borrowers
    end

end