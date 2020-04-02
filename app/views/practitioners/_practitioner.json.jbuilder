json.extract! practitioner, :id, :name, :phone, :email, :registration, :address, :fax, :location, :signature, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
