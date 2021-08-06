class Api::V1::GenerateTransactionsController < ApplicationController
    def index
        response = TransactionService.new
        message = {message: "Error generate in transactions, try again"}
        if response.code == 200 
            TransactionBuilder.new(response.format_to_s).builder
            message = {message: "Transactions generate success"}
        end
        render json: message
    end
end
