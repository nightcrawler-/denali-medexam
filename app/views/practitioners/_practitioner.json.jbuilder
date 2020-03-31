json.extract! practitioner, :id, :name, :address, :registration, :location, :email, :fax, :signature, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
