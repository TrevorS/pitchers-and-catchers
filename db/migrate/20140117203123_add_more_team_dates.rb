class AddMoreTeamDates < ActiveRecord::Migration
  def change
    add_column :teams, :pitchers_and_catchers, :datetime
    add_column :teams, :first_workout, :datetime
    add_column :teams, :position_players, :datetime
    add_column :teams, :first_full_workout, :datetime
  end
end
