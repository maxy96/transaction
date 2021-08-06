class PaymentSerializer < Panko::Serializer
    attributes :date_payment
    
    has_one :client, each_serializer: ClientSerializer

    has_one :payment_detail, each_serializer: PaymentDetailSerializer

    has_many :discount, each_serializer: DiscountSerializer
end