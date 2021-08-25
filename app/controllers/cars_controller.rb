class CarsController < ApplicationController
  before_action :find_car, only: [ :show]

  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)
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

  def car_params
    params.require(:car).permit(:model, :color, :mileage, :year)

  end
end
