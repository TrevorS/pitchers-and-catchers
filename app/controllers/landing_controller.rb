class LandingController < ApplicationController
  def index
    @team = League.AL.teams.first
  end
end
