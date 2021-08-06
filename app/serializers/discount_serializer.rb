class DiscountSerializer < Panko::Serializer
    attributes :amount, :reason

    def amount
        object.amount.to_i / 100.0
    end
end