class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :remarks
      t.string :exam_done
      t.string :note
      t.float :bwt
      t.float :bp
      t.integer :p
      t.string :lmp
      t.string :fp

      t.timestamps
    end
  end
end
