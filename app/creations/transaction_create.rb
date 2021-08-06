class TransactionCreate < CreateModel
    # @payment_id
    # @line = ["2738dd3d21bbe43258bc34fead90d4e350000007771971","1"]
    def create
        line = @line[0]
        TransactionPay.create!(
                                payment_id: @payment_id,
                                remember_token: line[1..32],
                                amount: line[33..45],
                                status: @line[1].to_i
                              )
    end
end