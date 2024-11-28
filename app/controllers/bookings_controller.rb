class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @passport = Passport.find_by(id: params[:passport_id])  # Find passport by passport_id
    if @passport
      @booking = @passport.bookings.find(params[:id])  # Now you can safely access bookings
    else
      # If the passport is not found, handle the error appropriately
      redirect_to passports_path, alert: 'Passport not found.'
    end
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
      redirect_to passport_bookings_path(@passport, @booking), notice: 'Booking successfully created'
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

  def approve
    @passport = Passport.find_by(id: params[:passport_id])
    @booking = @passport.bookings.find(params[:id])
    @booking.approved!
    respond_to do |format|
      format.html { redirect_to passport_path(@booking.passport), notice: "Booking approved!"}
      format.json
    end
  end

  def reject
    @passport = Passport.find_by(id: params[:passport_id])
    @booking = @passport.bookings.find(params[:id])
    @booking.rejected!
    respond_to do |format|
      format.html {redirect_to passport_path(@booking.passport), notice: "Booking has been rejected!"}
      format.json
    end
  end
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
