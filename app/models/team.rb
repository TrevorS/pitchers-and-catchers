# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  league_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Team < ActiveRecord::Base
  has_many :events
  belongs_to :league
end
