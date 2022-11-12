class HomeController < ApplicationController
  def index
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end

  def search_result
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end

  private

  def train_params
    params.require(:train).permit(:name, :source_station, :last_station, :start_time, :end_time)
  end
end