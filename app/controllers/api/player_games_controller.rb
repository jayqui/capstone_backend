class Api::PlayerGamesController < ApplicationController
  def index
    @player_games = current_player.games_attending.where(attending: true)
    render "index.json.jb"
  end

  def show
    @player_game = PlayerGame.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @player_game = PlayerGame.find_by(game_id: params[:game_id], player_id: current_player.id)
    if @player_game && @player_game.attending
      # do nothing
    elsif @player_game && !@player_game.attending
      @player_game.attending = true
      @player_game.save
      # render json: { errors: ["You've already signed up for this game."] }, status: 422
      # return
    else
      @player_game = PlayerGame.new(game_id: params[:game_id], player_id: current_player.id, attending: true)
    end
    if @player_game.save
      render "create.json.jb"
    else
      render json: { errors: @player_game.errors.full_message }, status: 422
    end
  end

  def destroy
    player_games = current_player.games_attending.where(game_id: params[:id])
    player_games.update_all(attending: false)
    render json: { message: "You are no longer attending this game." }
  end
end
