# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class League < ActiveRecord::Base
  has_many :teams

  def self.NL
    where(name: 'National League').first
  end

  def self.AL
    where(name: 'American League').first
  end
end
