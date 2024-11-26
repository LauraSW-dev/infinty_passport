class BookingsController < ApplicationController
  def new
    @passport = Passport.find(params[:passport_id])
    @booking = @passport.bookings.build
  end

  def create
    @passport = Passport.find(params[:passport_id])
    @booking = @passport.bookings.build(booking_params.merge(user: current_user))
    if @booking.save
      redirect_to @passport, notice: 'Booking created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_back fallback_location: passport_path, notice: 'Booking deleted successfully.'
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end

