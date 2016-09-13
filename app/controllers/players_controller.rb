class PlayersController < ApplicationController

  def index
    players = Player.all
    render json: players.as_json({include: [:team, :sponsors]})
  end

  def show 
    player = Player.find(params[:id])
    render json: player
  end

end