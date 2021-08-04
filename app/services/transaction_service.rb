class TransactionService < ApiIncreaseService
    def initialize
        super("/file.txt")
    end
end