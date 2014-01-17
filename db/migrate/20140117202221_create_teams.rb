class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.datetime :spring_training_opener
      t.datetime :first_game

      t.timestamps
    end
  end
end
