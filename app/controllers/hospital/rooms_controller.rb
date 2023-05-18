class Hospital::RoomsController < ApplicationController

  def index
    @rooms = policy_scope([:hospital, Room])
  end

end
