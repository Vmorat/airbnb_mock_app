class FlatsController < ApplicationController

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:property_name,
                                 :description,
                                 :property_type,
                                 :address,
                                 :city,
                                 :country,
                                 :latitude,
                                 :longitude,
                                 :bedrooms,
                                 :bathrooms,
                                 :max_guests,
                                 :price_per_night,
                                 :amenities)
  end
end
