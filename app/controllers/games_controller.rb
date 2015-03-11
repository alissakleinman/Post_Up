class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
     @game = Game.find(params[:id])
     @messages = @game.messages
  end

end
