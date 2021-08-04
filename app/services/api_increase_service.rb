class ApiIncreaseService
    require 'httparty'

    BASE_URI = Rails.application.secrets.api_base_uri
    TOKEN = Rails.application.secrets.increase_token 

    attr_reader :response

    def initialize(route)
        @response = HTTParty.get(BASE_URI+route, headers: {authorization: TOKEN})
    end
 
end