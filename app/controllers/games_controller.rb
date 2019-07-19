class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(state: ["X", "", "", "", "", "", "", "", ""])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
  end

  def index
    @games = Game.all
    render json: @games
  end


  private
    def game_params
      params.require(:game).permit(:id, :state)
    end

end
