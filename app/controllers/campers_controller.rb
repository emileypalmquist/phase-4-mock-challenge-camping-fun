class CampersController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
# rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

  def index
    # campers = Camper.all
    # render json: campers
    render json: Camper.all
    # render json: Camper.all, each_serializer: CamperShowSerializer
  end

  def show
    camper = Camper.find(params[:id])
    render json: camper, serializer: CamperShowSerializer
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

  private

  def camper_params
    params.permit(:name, :age)
  end


end
