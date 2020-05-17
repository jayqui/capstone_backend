class Api::FieldsController < ApplicationController
  def index
    @fields = Field.all.order(:name)
    render "index.json.jb"
  end

  def show
    @field = Field.find_by(id: params[:id])
    render "show.json.jb"
  end
end
