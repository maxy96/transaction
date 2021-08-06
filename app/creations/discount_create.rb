class DiscountCreate < CreateModel
    # need @payment_id
    # @line = [3a32020e4d27a422d8f7c0d4c1feeeade0000000301580,3]
    def create
        line = @line[0]
        Discount.create!(payment_id: @payment_id,
                        remember_token: line[1..32], 
                        amount: line[33..45],
                        reason: @line[1].to_i
                        )
    end
end