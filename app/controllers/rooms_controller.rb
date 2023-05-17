class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = policy_scope(Room)
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
    authorize @room
  end

  def new
    @room = Room.new
    authorize @room
  end

  def create
    @room = Room.new(room_params)
    @user_id = current_user.id
    authorize @room
    raise
    if @room.save
      redirect_to rooms_path
    else
      # display the form for the user again
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :facility_name, :location, :price_per_hour, :capacity, :photo, :user_id)
  end
end
