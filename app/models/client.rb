class Client < ApplicationRecord
    has_many :payment

    has_one :client_detail
end
