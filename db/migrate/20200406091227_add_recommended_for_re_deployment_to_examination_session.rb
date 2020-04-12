class AddRecommendedForReDeploymentToExaminationSession < ActiveRecord::Migration[6.0]
  def change
    add_column :examination_sessions, :recommended_for_re_deployment, :integer
  end
end
