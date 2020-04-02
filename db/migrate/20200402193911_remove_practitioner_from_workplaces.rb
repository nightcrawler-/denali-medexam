class RemovePractitionerFromWorkplaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :workplaces, :practitioner_id
  end
end
