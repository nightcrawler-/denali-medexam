class CreateWorkplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workplaces do |t|
      t.string :address
      t.string :email
      t.string :location
      t.string :name
      t.string :phone
      t.string :registration
      t.bigint :practitioner_id

      t.timestamps
    end
  end
end
