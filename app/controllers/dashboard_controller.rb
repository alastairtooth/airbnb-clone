class DashboardController < ApplicationController
  def dashboard
    @sent_bookings = Booking.where(:id_rats == @user)
    # @bookings_recd = Booking.where(current_rat.hats)
    @hats = current_rat.hats
    @pending_bookings = current_rat.bookings.where(status: 'pending')
    @historical_bookings = current_rat.bookings.where(status: ['accepted', 'declined'])
  end
end
