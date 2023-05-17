class Hospital::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end
end
