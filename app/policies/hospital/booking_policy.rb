class Hospital::BookingPolicy < ApplicationPolicy
  def update?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.bookings_as_hospital
    end
  end
end
