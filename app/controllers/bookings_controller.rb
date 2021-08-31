class BookingsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @hat = Hat.find(params[:hat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @hat = Hat.find(params[:hat_id])
    @booking.hat = @hat
    if @booking.save
      redirect_to hat_path(@hat)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to hat_path(@booking.hat)
  end

  private

  def booking_params
    params.require(:booking).permit(:accepted, :start_date, :end_date, :hat_id)
  end
end
