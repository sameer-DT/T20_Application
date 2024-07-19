class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @team = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice]= "Team Added Successfully."
      redirect_to @team 
    else
      render 'new',status:422
    end
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      flash[:notice]= 'Team Updated Successfully.'
      redirect_to @team
    else
      render 'edit',status:422
    end
  end

  

  def destroy
        @team = Team.find(params[:id])
        if @team.players.any?
          flash[:alert] = 'Cannot delete team with associated players. Please remove or reassign players first.'
          redirect_to @team
        else
          @team.destroy
          flash[:notice] = 'Team deleted successfully.'
          redirect_to teams_path
        end
    
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :country, :founded, :description)
  end

end



