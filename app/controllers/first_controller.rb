class FirstController < ApplicationController
  def index
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end
end