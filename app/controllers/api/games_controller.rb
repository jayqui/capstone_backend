class Api::GamesController < ApplicationController
  before_action :authenticate_player

  def index
    @games = Game.includes(:players, :field).order(:date_time)
    render "index.json.jb"
  end

  def show
    @game = Game.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @game = Game.new(player_id: current_player.id, field_id: params[:field_id], date_time: params[:date_time])
    if @game.save
      @player_game = PlayerGame.new(game_id: @game.id, player_id: current_player.id, attending: true)
      @player_game.save
      render "create.json.jb"
    else
      render json: { errors: @game.errors.full_message }, status: 422
    end
  end

  def update
    @game = current_player.games_created.find_by(id: params[:id])
    @game.player_id = current_player.id
    @game.field_id = params[:field_id] || @game.field_id
    @game.date_time = params[:date_time] || @game.date_time
    if @game.save
      render "show.json.jb"
    else
      render json: { errors: @game.errors.full_messages }, status: 422
    end
  end

  def destroy
    game = current_player.games_created.find_by(id: params[:id])
    game.destroy
    render "destroy.json.jb"
  end
end
