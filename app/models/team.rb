# == Schema Information
#
# Table name: teams
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  league                 :string(255)
#  spring_training_opener :datetime
#  opener                 :datetime
#  created_at             :datetime
#  updated_at             :datetime
#  pitchers_and_catchers  :datetime
#  first_workout          :datetime
#  position_players       :datetime
#  first_full_workout     :datetime
#  home_opener            :datetime
#  last_home_game         :datetime
#  last_game              :datetime
#

class Team < ActiveRecord::Base
end
