class AddPractitionerToWorkplaces < ActiveRecord::Migration[6.0]
  def change
    add_column :workplaces, :practitioner_id, :bigint
  end
end
