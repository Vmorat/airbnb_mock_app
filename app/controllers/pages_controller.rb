class PagesController < ApplicationController
  # Create the method to show all flats
  def home
    @flats = Flat.all
  end

  def show_flat_details
    @flats = Flat.find(params[:id])
    # You can add additional logic here if needed
  end
end
