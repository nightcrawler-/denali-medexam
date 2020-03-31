class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :dob
      t.integer :gender
      t.string :address
      t.string :pn
      t.string :national_id

      t.timestamps
    end
  end
end
