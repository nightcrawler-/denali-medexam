class CreateWorkplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workplaces do |t|
      t.string :name
      t.string :registration
      t.string :location
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
