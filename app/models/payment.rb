class Payment < ApplicationRecord
    belongs_to :client

    has_many :transaction_pay

    has_many :discount

    has_one :payment_detail
end
