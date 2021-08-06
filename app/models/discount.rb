class Discount < ApplicationRecord
    enum reason: [:IVA, :RETENTIONS, :COMMISSIONS, :EXTRA_COSTS, :GROSS_INCOME]

    belongs_to :payment
end
