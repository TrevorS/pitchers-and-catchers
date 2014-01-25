# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  scheduling :datetime
#  created_at :datetime
#  updated_at :datetime
#  team_id    :integer
#

class Event < ActiveRecord::Base
  belongs_to :team
end
