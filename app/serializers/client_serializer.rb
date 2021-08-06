class ClientSerializer < Panko::Serializer
     attributes :remember_token

     has_one :client_detail, serializer: ClientDetailSerializer
end