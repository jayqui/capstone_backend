class Api::FieldsController < ApplicationController
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
      open_time: params[:open_time],
      close_time: params[:close_time],
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
