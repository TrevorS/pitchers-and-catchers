class RemoveEventsFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :spring_training_opener, :datetime
    remove_column :teams, :opener, :datetime
    remove_column :teams, :pitchers_and_catchers, :datetime
    remove_column :teams, :first_workout, :datetime
    remove_column :teams, :position_players, :datetime
    remove_column :teams, :first_full_workout, :datetime
    remove_column :teams, :home_opener, :datetime
    remove_column :teams, :last_home_game, :datetime
    remove_column :teams, :last_game, :datetime
    rename_column :teams, :league, :league_id
    change_column :teams, :league_id, :integer
  end
end
