class RatsController < ApplicationController
  def index
    @rats = Rat.all

    @markers = @rats.geocoded.map do |rat|
      {
        lat: rat.latitude,
        lng: rat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { rat: rat })
      }
    end
  end

  def show
    @rat = Rat.find(params[:id])
    @hats = @rat.hats
  end

  def new
    @rat = Rat.new
  end

  def create
    @rat = Rat.new(rat_params)
    if @rat.save
      redirect_to rat_path(@rat)
    else
      render :new
    end
  end

  def edit
    @rat = Rat.find(params[:id])
  end

  def update
    @rat = Rat.find(params[:id])
    @rat.update(params[:rat])
  end

  def destroy
    @rat = Rat.find(params[:id])
    @rat.destroy

    redirect_to rats_path
  end

  private

  def rat_params
    params.require(:rat).permit(:first_name, :last_name, :email, :address, :photo)
  end
end
