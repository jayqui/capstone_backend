class Api::PlayerGamesController < ApplicationController
  def index
    @player_games = PlayerGame.all
    render "index.json.jb"
  end
end
