class TransactionService < ApiIncreaseService
    def initialize
        super("/file.txt")
    end

    def format_to_s 
        @response.to_s
    end

end