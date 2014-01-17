# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  start      :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
end
