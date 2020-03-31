class CreatePractitioners < ActiveRecord::Migration[6.0]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :address
      t.string :registration
      t.string :location
      t.string :email
      t.string :fax
      t.string :signature

      t.timestamps
    end
  end
end
