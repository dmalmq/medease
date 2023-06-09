class BookingPolicy < ApplicationPolicy

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      # bookings where the booking.user == user
      # @bookings = Booking.where(user: current_user)
      scope.where(user: user)
      # If users can see all restaurants
      # scope.where(user: user) # If users can only see their restaurants
      # scope.where("name LIKE 't%'") # If users can only see restaurants starting with `t`
      # ...
    end
  end
end
