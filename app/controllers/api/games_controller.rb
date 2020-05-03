class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jb"
  end

  def show
    @game = Game.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @game = Game.new(player_id: params[:player_id], field_id: params[:field_id], date_time: params[:date_time])
    if @game.save
      render "create.json.jb"
    else
      render json: { errors: @game.errors.full_message }, status: 422
    end
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.player_id = params[:player_id] || @game.player_id
    @game.field_id = params[:field_id] || @game.field_id
    @game.date_time = params[:date_time] || @game.date_time
    if @game.save
      render "show.json.jb"
    else
      render json: { errors: @game.errors.full_messages }, status: 422
    end
  end

  def destroy
    @game = Game.find_by(id: params["id"])
    if @game.destroy
      render "destroy.json.jb"
    else
      render json: { errors: @game.errors.full_messages }, status: 401
    end
  end
end
