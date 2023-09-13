class ReservationsController < ApplicationController
    def index
        reservation = current_user.reservations
        render json: reservation
    end

    def create
        user = User.find(params[:user_id])
        car_id = Car.find(params[:car_id])
        @reserve = Reservation.new(reservation_params)
        if @reserve.save
            render json: { response: "Successfully added to reservation" }
        else
            render json: @reserve.errors, status: :unprocessable_entity
        end
    end
    
    def reservation_params
        params.require(:reservation).permit(:user_id, :car_id, :city, :date)
    end
end
