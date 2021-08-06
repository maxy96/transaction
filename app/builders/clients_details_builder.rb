class ClientsDetailsBuilder
    def initialize(token, id)
        @token = token
        @id = id
    end

    def builder
        res = ClientService.new(@token).json_parse
        if res != nil
            res["client_id"] = @id
            create_details(res)
        end
    end

    private
    
    def create_details(client)
        ClientDetail.create!(client.except("id"))
    end
end