class Api::PlayersController < ApplicationController
  def index
    @players = Player.all
    render "index.json.jb"
  end

  def show
    @player = Player.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @player = Player.new(
      name: current_player.id, 
      email: params[:field_id], 
      password_digest: params[:date_time],
      address: params[:address],
      position: params[:position],
      dob: params[:dob],
      level: params[:level],
    )
    if @player.save
      render "create.json.jb"
    else
      render json: { errors: @player.errors.full_message }, status: 422
    end
end
