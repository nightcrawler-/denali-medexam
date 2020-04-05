class AddHealthRiskToExaminationSession < ActiveRecord::Migration[6.0]
  def change
    add_column :examination_sessions, :health_risk, :string
  end
end
