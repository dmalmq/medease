class Hospital::RoomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.rooms
    end
  end

  def edit?
    update?
  end

  def update?
    true
  end
end
