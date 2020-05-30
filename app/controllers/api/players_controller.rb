class Api::PlayersController < ApplicationController
  def index
    @players = Player.all.includes(:games_attending, :games_created)
    render "index.json.jb"
  end

  def show
    @player = Player.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @player = Player.new(name: params[:name], email: params[:email], password: params[:password], address: params[:address], position: params[:position], dob: params[:dob], level: "recreational")
    if @player.save
      render "create.json.jb"
    else
      render json: { errors: @player.errors.full_message }, status: 422
    end
  end
end
