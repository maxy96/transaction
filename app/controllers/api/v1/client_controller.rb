class Api::V1::ClientController < ApplicationController
    def index
        render_paginated Client.all, each_serializer: ClientSerializer
    end

end
