class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservation = current_user.reservations.order(created_at: :desc)
    render json: @reservation
  end

  def create
    @reserve = current_user.reservations.new(reservation_params)
    if @reserve.save
      render json: { response: 'Successfully added to reservation' }
    else
      render json: @reserve.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reserve = current_user.reservations.find(params[:id])
    @reserve.destroy
    render json: { response: 'Reservation has been cancelled' }
  end

  private

  def reservation_params
    params.require(:reservation).permit(:car_id, :city, :date)
  end
end
