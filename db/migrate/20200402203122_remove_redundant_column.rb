class RemoveRedundantColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :employee_examination_sessions, :session_id
  end
end
