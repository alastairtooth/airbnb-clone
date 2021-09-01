class DashboardController < ApplicationController
  def dashboard
    @bookings_sent = Booking.where(:id_rats == @user)
    # @bookings_recd = Booking.where(current_rat.hats)
    @hats = current_rat.hats
    @bookings = current_rat.bookings
  end
end
