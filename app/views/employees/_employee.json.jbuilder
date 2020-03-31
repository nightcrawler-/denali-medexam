json.extract! employee, :id, :name, :dob, :gender, :address, :pn, :national_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
