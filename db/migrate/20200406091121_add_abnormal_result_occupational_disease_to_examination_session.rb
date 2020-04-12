class AddAbnormalResultOccupationalDiseaseToExaminationSession < ActiveRecord::Migration[6.0]
  def change
    add_column :examination_sessions, :abnormal_results_occupational_disease, :integer
  end
end
