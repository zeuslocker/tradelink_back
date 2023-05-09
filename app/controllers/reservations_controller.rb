class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: reservations
  end

  def create
    reservation = Reservation.create(reservation_params)

    if reservation.save
      render json: reservation
    else
      render json: reservation.errors
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:title, :start, :finish)
  end
end
