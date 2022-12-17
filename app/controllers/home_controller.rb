class HomeController < ApplicationController
  before_action :set_train_search

  def index; end

  def search_result; end

  private

  def set_train_search
    @q = Train.ransack(params[:q])
    @trains = @q.result(distinct: true)
  end
end