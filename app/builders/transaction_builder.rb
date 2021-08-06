class TransactionBuilder
    BUILD = [PaymentDetailCreate, TransactionCreate, DiscountCreate, PaymentCreate]

    def initialize(lines)
        @lines = lines.split(/\n/)
    end

    def builder
        @lines.reverse.each do |line|
            pos = line[0].to_i - 1
            if pos == 3
                @payment_id = BUILD[pos].new(line).create
            else
                BUILD[pos].new(line, @payment_id).create
            end
        end
    end
end