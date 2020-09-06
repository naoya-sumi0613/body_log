class UsersController < ApplicationController
  def show
    @logs = Log.where(user_id: current_user)
    gon.logs = Log.where(user_id: current_user)
  end

  def edit
  end
end
