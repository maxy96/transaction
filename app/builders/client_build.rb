class ClientBuild
    def initialize(client)
        @client = client 
    end

    def created
        token = @client[8..40]
        Client.create!(remember_token: token)
    end
end