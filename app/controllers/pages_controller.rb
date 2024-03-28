class PagesController < ApplicationController
  # Create the method to show all flats
  def home
    @flats = Flat.all
    if params[:query].present?
      sql_subquery = "property_name ILIKE :query OR description ILIKE :query"
      @flats = @flats.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show_flat_details
    @flats = Flat.find(params[:id])
    # You can add additional logic here if needed
  end
end
