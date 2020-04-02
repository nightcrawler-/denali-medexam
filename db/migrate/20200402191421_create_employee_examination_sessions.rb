class CreateEmployeeExaminationSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_examination_sessions do |t|
      t.float :bp
      t.float :btw
      t.string :fp
      t.string :lmp
      t.string :remarks
      t.bigint :employee_id
      t.bigint :session_id

      t.timestamps
    end
  end
end
