class PaymentTransactionsSerializer < Panko::Serializer
    attributes :date_payment

    has_many :transaction_pay, each_serializer: TransactionPaySerializer, aliases: :transactions

end