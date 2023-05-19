class Hospital::RoomsController < ApplicationController

  def index
    @rooms = policy_scope([:hospital, Room])
  end

  def edit
    @room = Room.find(params[:id])
    authorize([:hospital, @room])
  end

  def update
    @room = Room.find(params[:id])
    authorize([:hospital, @room])
    if @room.update(room_params)
      redirect_to hospital_rooms_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :category, :equipment, :price_per_hour, :capacity)
  end

end
