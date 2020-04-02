class CreateExaminationSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :examination_sessions do |t|
      t.date :date_of_exam
      t.string :examination_type
      t.bigint :workplace_id

      t.timestamps
    end
  end
end
