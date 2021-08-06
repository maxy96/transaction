class ClientService < ApiIncreaseService
    def initialize(token)
        super("/clients/"+token)
    end

    def json_parse
        if code == 200
            JSON.parse(@response) unless response.parsed_response == nil
        end
    end
end