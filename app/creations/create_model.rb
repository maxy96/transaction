class CreateModel 
    def initialize(line, payment_id = nil)
        @payment_id = payment_id
        @line = line.split(/\s+/)
    end

    def create
    end
end