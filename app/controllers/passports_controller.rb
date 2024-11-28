class PassportsController < ApplicationController

  def index
    @passport = Passport.all
    
    @passports = Passport.geocoded
    @markers = @passports.map do |passport|
      {
        lat: passport.latitude,
        lng: passport.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {passport: passport}),
        marker_html: render_to_string(partial: "marker", locals: {passport: passport}) # Pass the passport to the partial
      }
    end
  end

  def show
    @passport = Passport.find(params[:id])
    @booking = @passport.bookings.new
  end

  def new
    @passport = Passport.new
  end

  def create
    @passport = Passport.new(passport_params)
    @passport.user = current_user
    if @passport.save
      redirect_to @passport, notice: 'Passport created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @passport = Passport.find(params[:id])
  end

  def update
    @passport = Passport.find(params[:id])
    if @passport.update(passport_params)
      redirect_to @passport, notice: 'Passport updated successfully.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def passport_params
    params.require(:passport).permit(:title, :description, :price, photos: [])
  end
end
