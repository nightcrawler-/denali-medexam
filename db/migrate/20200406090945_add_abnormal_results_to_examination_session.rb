class AddAbnormalResultsToExaminationSession < ActiveRecord::Migration[6.0]
  def change
    add_column :examination_sessions, :abnormal_results, :integer
  end
end
