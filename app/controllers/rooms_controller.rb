class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      # display the form for the user again
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :facility_name, :location, :price_per_hour, :capacity, :photo)
  end
end
