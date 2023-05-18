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
    @categories = CATEGORIES
    @equipments = EQUIPMENTS
    authorize @room
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    authorize @room
    if @room.save
      redirect_to hospital_rooms_path
    else
      # display the form for the user again
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :facility_name, :location, :price_per_hour, :capacity, photos: [])
  end
end
