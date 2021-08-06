class TransactionPay < ApplicationRecord
    enum status: [:waiting, :approved, :rejected]

    belongs_to :payment
end
