class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @player = Player.all
    
    if params[:team_name].present?
      @player = @player.joins(:team).where(teams: { name: params[:team_name] })
    end

    if params[:player_name].present?
      @player = @player.where("players.name LIKE ?", "%#{params[:player_name]}%")
    end

    if params[:age_from].present? && params[:age_to].present?
      @player = @player.where(age: params[:age_from]..params[:age_to])
    end
  end

  def show
  end

  def edit
    
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:notice] = "Player Added successfully!"
      redirect_to @player
    else
      render 'new',status:422
    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      flash[:notice] = "Player Updated successfully!"
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    @player.destroy
    flash[:notice] = "Player Deleted successfully!"
    redirect_to players_path
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :team_id,:age,:position,:role,:description,:is_active,:is_captain)
  end
end