class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @passport = Passport.find(params[:passport_id])
    @booking = Booking.new
  end
    def create
      @passport = Passport.find(params[:passport_id])
      @booking = @passport.bookings.new(booking_params)
      @booking.user = current_user

      if @booking.save
        redirect_to passport_path(@passport), notice: 'Booking successfully created'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    @booking = @passport.bookings.find(params[:id])
    end

  def update
    @passport = passport.find(params[:passport_id])
    @booking = @passport.bookings.find(params[:id])
      if @booking.update(booking_params)
        redirect_to passport_booking_path(@passport, @booking), notice: 'booking successfully updated'
       else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to passport_bookings_path(@passport), notice: 'Booking deleted successfully.'
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
