class TransactionPaySerializer < Panko::Serializer
    attributes :id, :amount, :status
end