class DropDashboards < ActiveRecord::Migration[6.0]
  def change
    drop_table :dashboards
  end
end
