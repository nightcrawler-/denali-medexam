class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :address
      t.date :dob
      t.integer :gender
      t.string :name
      t.string :pn
      t.string :national_id
      t.bigint :workplace_id

      t.timestamps
    end
  end
end
