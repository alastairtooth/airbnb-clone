class DashboardController < ApplicationController
  def dashboard
    @sent_bookings = current_rat.bookings
    # @bookings_recd = Booking.where(current_rat.hats)
    @hats = current_rat.hats
    @pending_bookings = Booking.where(status: 'pending')
    @historical_bookings = Booking.where(status: ['accepted', 'declined'])
  end
end
