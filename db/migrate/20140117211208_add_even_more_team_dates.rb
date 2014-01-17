class AddEvenMoreTeamDates < ActiveRecord::Migration
  def change
    rename_column :teams, :first_game, :opener

    add_column :teams, :home_opener, :datetime
    add_column :teams, :spring_training_home_opener, :datetime
    add_column :teams, :last_home_game, :datetime
    add_column :teams, :last_game, :datetime
  end
end
