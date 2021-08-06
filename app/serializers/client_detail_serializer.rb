class ClientDetailSerializer < Panko::Serializer
    attributes :id, :name, :job, :email, :country, :address, :zip_code, :phone

    def name
        "#{object.first_name}, #{object.last_name}"
    end
end