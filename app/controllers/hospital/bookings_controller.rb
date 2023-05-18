class Hospital::BookingsController < ApplicationController

  def index
    @bookings = policy_scope([:hospital, Booking])
    # @rooms = policy_scope([:hospital, Room]) --> what if i want to policy both?
    # @rooms = Room.where(user: user)
  end
end
