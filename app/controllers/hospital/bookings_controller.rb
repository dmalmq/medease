class Hospital::BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @rooms = policy_scope(Room)
    # @rooms = Room.where(user: user)
  end
end
