class DashboardController < ApplicationController
  def index
    @passport = current_user.passports
    if @passports.present?
      @bookings = Booking.where(passport_id: @passports.pluck(:id))
    else
      @bookings = []  # or handle the case where there are no passports
    end
  end
end
