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

  # before_action :authenticate_user!, only: :home

  def flats_of_user
    # filter the flats where the current user is the owner of the flat
    @flats = Flat.find(params[:id]).current_user
  end

  def booking_requests_received
    # filter the bookings where the current user is the owner of the flat
    @bookings = current_user.received_bookings
    # @booking_requests = BookingRequest.where(owner_id: current_user.id)
  end

  def booked_flats
    # filter the bookings the current user has made to other flats
    @bookings = current_user.bookings
  end

  def accountinformation
     @owned_flats = current_user.flats
     @booking_requests_to_owned_flats = current_user.received_bookings
     @booked_flats = current_user.bookings
  end
end
