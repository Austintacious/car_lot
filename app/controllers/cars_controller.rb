class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    set_car
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to car_path(@car),
      notice: "Car successfully added!"
    else
      render :new
    end
  end

  def edit
    set_car
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end 

  def car_params
    params.require(:car).permit(:color, :year, :milage, :description)
  end
end