class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to bookings_path, status: :see_other, notice: 'booking was successfully deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :end_time, :start_time).merge(user: current_user)
  end
end
