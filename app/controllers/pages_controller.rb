class PagesController < ApplicationController
  def home
    @flats = Flat.all # Assuming you have a Flat model with flat data
  end

  def show_flat_details
    @flats = Flat.find(params[:id])
    # You can add additional logic here if needed
  end
end
