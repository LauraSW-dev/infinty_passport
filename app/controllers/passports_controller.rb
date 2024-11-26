class PassportsController < ApplicationController
  def index
    @passports = Passport.all
  end

  def show
    @passport = Passport.find(params[:id])
  end

  def new
    @passport = Passport.new
  end

  def create
    @passport = Passport.new(passport_params)
    if @passport.save
      redirect_to @passport, notice: 'Passport created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def Passport_params
    params.require(:passport).permit(:title, :description, :price, :photos)
  end
end
