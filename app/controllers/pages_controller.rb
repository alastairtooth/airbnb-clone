class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @bookings_sent = Booking.where(:id_rats == @user)
    @bookings_recd = Booking.where(current_user.hats)
    @hats = current_user.hats
    @bookings = @hats.bookings
  end
end
