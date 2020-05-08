class Api::PlayerGamesController < ApplicationController
  def index
    @player_games = PlayerGame.all
    render "index.json.jb"
  end

  def show
    @player_game = PlayerGame.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @player_game = PlayerGame.find_by(game_id: params[:game_id], player_id: current_player.id)
    if @player_game
      render json: { errors: ["You've already signed up for this game."] }
      return
    end
    @player_game = PlayerGame.new(game_id: params[:game_id], player_id: current_player.id, attending: true)
    if @player_game.save
      render "create.json.jb"
    else
      render json: { errors: @player_game.errors.full_message }, status: 422
    end
  end

  def destroy
    player_game = current_player.games_attending.where(attending: true).find_by(id: params[:id])
    player_game.attending = false
    player_game.save
    render json: { message: "You are no longer attending this game." }
  end
end
