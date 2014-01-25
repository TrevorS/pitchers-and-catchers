class RemoveSpringTrainingHomeOpenerFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :spring_training_home_opener, :datetime
  end
end
