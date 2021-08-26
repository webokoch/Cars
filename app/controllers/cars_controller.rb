class CarsController < ApplicationController
  before_action :find_car, only: [ :show, :edit, :update, :destroy]

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
    if @car.save
      redirect_to car_path(@car), notice: 'New car was successfully added!'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car), notice: 'Car was successfully updated!'
    else
      render :edit
    end
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
