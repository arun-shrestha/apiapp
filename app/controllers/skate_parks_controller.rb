class SkateParksController < ApplicationController
  before_action :set_skate_park, only: [:show, :update, :destroy]

  # POST /skate_parks/import
  def import
    file = params[:file].path
    SkatePark.import(file)
  end
  # GET /skate_parks
  def index
    @skate_parks = SkatePark.all

    render json: @skate_parks
  end
  def path
    
  end
  # GET /skate_parks/1
  def show
    render json: @skate_park
  end

  # POST /skate_parks
  def create
    @skate_park = SkatePark.new(skate_park_params)

    if @skate_park.save
      render json: @skate_park, status: :created, location: @skate_park
    else
      render json: @skate_park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skate_parks/1
  def update
    if @skate_park.update(skate_park_params)
      render json: @skate_park
    else
      render json: @skate_park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skate_parks/1
  def destroy
    @skate_park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skate_park
      @skate_park = SkatePark.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skate_park_params
      params.require(:skate_park).permit(:name, :address, :suburb, :postcode, :state, :business_category, :lga, :region, :latitude, :longitude)
    end
end
