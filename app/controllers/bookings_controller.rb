class BookingsController < ApplicationController
  def index
    if params[:tab] == "pending"
      @bookings = policy_scope(Booking.where(status: "pending"))
    else
      @bookings = policy_scope(Booking.where(status: "confirmed"))
    end
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
      redirect_to bookings_path(tab: "pending", room: @room)
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
    params.require(:booking).permit(:status, :date, :hours, :from, :comment).merge(user: current_user)
  end
end
