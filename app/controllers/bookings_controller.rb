class BookingsController < ApplicationController
  def new
    @flat = Flat.find(1)
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(booking_params)
    @booking.status = "pending" # Set default status to pending
    if @booking.save
      # Send request to owner (you need to implement this)
      redirect_to root_path, notice: 'Booking request sent successfully!'
    else
      flash.now[:alert] = 'Failed to send booking request'
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flat_id, :check_in_date, :check_out_date, :total_price, :booking_date, :status)
  end
end
