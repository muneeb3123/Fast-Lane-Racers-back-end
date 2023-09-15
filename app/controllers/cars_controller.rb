class CarsController < ApplicationController
  before_action :load_car, only: %i[show edit update destroy]
  load_and_authorize_resource only: %i[new create] # Loads the @car object and authorizes actions

  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: [@car]
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car
    else
      render json: { error: 'Not Found' }
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy!
      render json: { message: 'Car Deleted' }
    else
      render json: { error: 'Not Found' }
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :finance_fee, :option_to_purchase_fee, :total_amount_payable,
                                :duration, :apr, :image)
  end

  def load_car
    @car = Car.find(params[:id])
  end
end
