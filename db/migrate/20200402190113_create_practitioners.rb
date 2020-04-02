class CreatePractitioners < ActiveRecord::Migration[6.0]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :registration
      t.string :address
      t.string :fax
      t.string :location
      t.string :signature

      t.timestamps
    end
  end
end
