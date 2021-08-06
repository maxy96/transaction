class PaymentDetailSerializer < Panko::Serializer
    attributes :currency, :total_amount, :total_discount, :total_with_discount

    
    def total_amount
        format_int(object.total_amount) / 100.0
    end
    def total_discount
        format_int(object.total_discount) / 100.0
    end    
    def total_with_discount
        format_int(object.total_with_discount) / 100.0
    end

    def format_int(obj)
        obj.to_i
    end
end