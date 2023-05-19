class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = policy_scope(Room)

    if params[:query].present? || params[:category].present? || params[:equipment].present?
      # Search for rooms within a 10 km radius
      @rooms = Room.near(params[:query], 10) if params[:query].present?

      # Filter by category if selected
      @rooms = @rooms.where(category: params[:category]) if params[:category].present?

      # Filter by equipment if selected
      @rooms = @rooms.where(equipment: params[:equipment]) if params[:equipment].present?
    end
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
    authorize @room
    @markers =
      [{
        lat: @room.latitude,
        lng: @room.longitude
      }]
  end

  def new
    @room = Room.new
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
    params.require(:room).permit(:name, :facility_name, :address, :price_per_hour, :capacity, :category, :equipment, photos: [])
  end
end

# if params[:query].present? || params[:category].present? || params[:equipment].present?
#   @query_search = params[:query]
#   @rooms = Room.near(@query_search, 10)
