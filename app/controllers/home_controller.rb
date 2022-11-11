class HomeController < ApplicationController
  def index
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end

  def search_result
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end
end