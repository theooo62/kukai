class UsersController < ApplicationController
  def show
    @user_id = current_user.user_id
    @haikus = Haiku.where(user_id: current_user.id)
  end
