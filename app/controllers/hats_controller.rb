class HatsController < ApplicationController
  def index
    @hats = Hat.all
  end

  def show
    @hat = Hat.find(params[:id])
  end

  def new
    @hat = Hat.new
  end

  def create
    @hat = Hat.new(hat_params)
    @hat.rat = current_rat
    if @hat.save
      redirect_to hat_path(@hat)
    else
      render :new
    end
  end

  def edit
    @hat = Hat.find(params[:id])
  end

  def update
    @hat = Hat.find(params[:id])
    @hat.update(params[:hat])
  end

  def destroy
    @hat = Hat.find(params[:id])
    @hat.destroy

    redirect_to hats_path
  end

  private

  def hat_params
    params.require(:hat).permit(:title, :description, :price, :size, :available, :photo)
  end
end
