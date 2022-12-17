class TrainStationsController < ApplicationController
  before_action :set_train_station, only: %i[show edit update destroy]
  
  def index
    @train_stations = TrainStation.all
  end

  def new
    @train_station = TrainStation.new
  end

  def create
    @train_station = TrainStation.new(train_station_params)
    if @train_station.save
      redirect_to train_stations_path, notice: 'Attributes has been added'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @train_station.update(train_station_params)
      redirect_to train_stations_path
    else
      render :edit
    end
  end


  def destroy
    @train_station.destroy
    redirect_to train_stations_path
  end

  private

  def train_station_params
    params.require(:train_station).permit(:train_id, :station_id, :day, :distance_in_km, :arrival_time, :departure_time, :total_halt_in_minutes)
  end

  def set_train_station
    @train_station = TrainStation.find(params[:id])
  end

end