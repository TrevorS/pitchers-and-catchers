class ModifyEvents < ActiveRecord::Migration
  def change
    rename_column :events, :start, :scheduling
    add_column :events, :team_id, :integer
    add_index :events, :team_id
  end
end
