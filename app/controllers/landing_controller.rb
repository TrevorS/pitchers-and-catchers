class LandingController < ApplicationController
  def index
    @team = Team.random
    redirect_to @team
  end
end
