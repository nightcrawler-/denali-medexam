class ChangeColumnRemarksAddDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column :employee_examination_sessions, :remarks, :string, default: "PHYSICALLY FIT"
  end
end
