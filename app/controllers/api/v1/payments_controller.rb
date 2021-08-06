class Api::V1::PaymentsController < ApplicationController
    def index
        render_paginated Payment.all, each_serializer: PaymentSerializer
    end
end
