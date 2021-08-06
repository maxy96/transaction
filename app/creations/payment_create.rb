class PaymentCreate < CreateModel
    def create
        # @line = [4, AAAAMMDDIDCLIENT]
        line = @line[1]
        if !Client.exists? remember_token: line[8..40]
            client = Client.create!(remember_token: line[8..40]) 
            ClientsDetailsBuilder.new(line[8..40], client.id).builder
        else
            client = Client.find_by(remember_token: line[8..40]) 
        end

        payment = Payment.create!(date_payment: line[0..7], client_id: client.id) 
        payment.id
    end
end