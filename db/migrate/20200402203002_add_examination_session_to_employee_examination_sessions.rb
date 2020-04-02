class AddExaminationSessionToEmployeeExaminationSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :employee_examination_sessions, :examination_session_id, :bigint
  end
end
