class Hospital::BookingsController < ApplicationController

  def index
    @bookings = policy_scope([:hospital, Booking])
    @upcomming = @bookings.where(status: "confirmed")
    @requests = @bookings.where(status: "pending")
    # @rooms = policy_scope([:hospital, Room]) --> what if i want to policy both?
    # @rooms = Room.where(user: user)
  end

  def update
    @booking = Booking.find(params[:id])
    authorize [:hospital, @booking]
    if @booking.update(booking_params)
      redirect_to hospital_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :date, :hours, :from, :comment).merge(user: current_user)
  end
end
