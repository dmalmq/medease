class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new()
  end
end
