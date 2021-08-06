class ClientTransactionsSerializer < Panko::Serializer
    attributes :remember_token

    has_one :client_detail, serializer: ClientDetailSerializer

    has_many :payment, each_serializer: PaymentTransactionsSerializer
end