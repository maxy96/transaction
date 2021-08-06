class PaymentDetail < ApplicationRecord
    enum currency: [:ARS, :USD]

    belongs_to :payment
end
