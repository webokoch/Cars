class CarsController < ApplicationController
  before_action :find_car, only: [ :show]

  def index
    @cars = Car.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_car
    @car = Car.find(params[:id])
  end
end
