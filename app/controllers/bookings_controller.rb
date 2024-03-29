class BookingsController < ApplicationController
  before_action :find_flat, only: [:new, :create]

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    @booking.status = "pending" # Set default status to pending

    date_format = "%Y-%m-%d"
    @booking.check_in_date = Date.strptime(params[:booking][:check_in_date], date_format)
    @booking.check_out_date = Date.strptime(params[:booking][:check_out_date], date_format)
    # raise
    if @booking.save
      # Send request to owner (you need to implement this)
      redirect_to root_path, notice: 'Booking request sent successfully!'
    else
      flash.now[:alert] = 'Failed to send booking request'
      render :new
    end
  end

  def index
    @booking_requests = current_user.booking_requests
  end

  def show_all
    @owned_flats = current_user.flats
    @booking_requests = Booking.where(flat_id: @owned_flats.pluck(:id))
    head :no_content
  end

  def show
    @booking = Booking.find(params[:id])
    @booking_requests_to_owned_flats = current_user.booking_requests_to_owned_flats
  end

  private

  def booking_params
    params.require(:booking).permit(:flat_id, :check_in_date, :check_out_date, :total_price, :booking_date, :status)
  end

  def find_flat
    @flat = Flat.find(params[:flat_id])
  end
end
