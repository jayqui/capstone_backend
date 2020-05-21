class Api::FieldsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @fields = Field.all.order(:name)
    render "index.json.jb"
  end

  def create
    response = Cloudinary::Uploader.upload(params[:image_url])
    cloudinary_url = response["secure_url"]
    @field = Field.new(
      name: params[:name],
      address: params[:address],
      open_time: DateTime.new(2020, 1, 1, 8, 00, 00),
      close_time: DateTime.new(2050, 1, 1, 8, 00, 00),
      image_url: cloudinary_url,
    )
    if @field.save
      render "create.json.jb"
    else
      render json: { errors: @field.errors.full_messages }, status: 422
    end
  end

  def show
    @field = Field.find_by(id: params[:id])
    render "show.json.jb"
  end
end
