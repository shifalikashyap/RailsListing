class TrainsController < ApplicationController
  before_action :set_train, only: %i[show edit update destroy]
  
  def index
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true).page(params[:page])
  end


  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to trains_path, notice: 'Train has been added'
    else
      render :new
    end
  end


  def show
  end

  def edit
  end

  def update
    if @train.update(train_params)
      redirect_to trains_path(@train)
    else
      render :edit
    end
  end


  def destroy
    @train.destroy
    redirect_to trains_path
  end

  private 

  def train_params
    params.require(:train).permit(:name, :source_station, :last_station, :start_time, :end_time)
  end

  def set_train
    @train = Train.find(params[:id])
  end
end