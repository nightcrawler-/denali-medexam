json.extract! employee, :id, :address, :dob, :gender, :name, :pn, :national_id, :workplace_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
