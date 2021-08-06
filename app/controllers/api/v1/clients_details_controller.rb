class Api::V1::ClientsDetailsController < ApplicationController
    def index
        render_paginated ClientDetail.all, each_serializer: ClientDetailSerializer
    end
end
