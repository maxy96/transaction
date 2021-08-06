class PaymentDetailCreate < CreateModel
    # @payment_id
    # @line = ["102a20bcdb84b4d41bdc63ba5f5900683", "000000012084787800000028024670000118045411"]
    def create
        line = @line[0]
        line_amount = @line[1]
        PaymentDetail.create(
                                payment_id: @payment_id,
                                remember_token: line[1..32],
                                currency: line_amount[0..2].to_i,
                                total_amount: line_amount[3..15],
                                total_discount: line_amount[16..29],
                                total_with_discount: line_amount[30..43]
                            )
    end
end