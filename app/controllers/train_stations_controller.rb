class Train_Stations_Controller < ApplicationController
  before_action :set_train, only: %i[show edit update destroy]
  
  def index
    @train_stations = Train_Stations.all
  end

  def new
    @Train_Station = Train_Station.new
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to stations_path, notice: 'Station has been added'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @station.update(station_params)
      redirect_to stations_path(@station)
    else
      render :edit
    end
  end

  def destroy
    @station.destroy
    redirect_to stations_path
  end

  private

  def station_params
    params.require(:station).permit(:code, :name, :state, :longitude, :latitude)
  end

  def set_station
    @station = Station.find(params[:id])
  end

end