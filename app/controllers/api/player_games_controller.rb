class Api::PlayerGamesController < ApplicationController
  def index
    @player_games = PlayerGame.all
    render "index.json.jb"
  end

  def show
    @player_game = PlayerGame.find_by(id: params[:id])
    render "show.json.jb"
  end
end
