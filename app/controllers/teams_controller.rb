class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @team.to_json(include: [:events]) }
    end
  end
end
