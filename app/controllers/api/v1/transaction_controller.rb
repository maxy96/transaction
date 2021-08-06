class Api::V1::TransactionController < ApplicationController
    def index 
        render json: ClientTransactionsSerializer.new.serialize_to_json(Client.find(params[:client_id]))
    end

end
