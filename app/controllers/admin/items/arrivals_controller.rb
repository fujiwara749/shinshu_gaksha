class Admin::Items::ArrivalsController < ApplicationController
  def new
    @arrival = Arrival.new
  end

  def create
    @arrival = Arrival.new(arrival_params)
    arrival.save
    redirect_to arrivals_path
  end

  def index
    @arrivals = Arrival.all
  end

  def edit
    @arrival = Arrival.find(params[:id])
  end

  def update
    @arrival = Arrival.find(params[:id])
    @arrival.update(arrival_params)
    redirect_to arrivals_path
  end

  def destroy
    @arrival = Arrival.find(params[:id])
    @arrival.destroy
    redirect_to arrivals_path
  end

  private
  def arrivals_params
    params.require(:arrival).permit(:arrival_amount)
end
