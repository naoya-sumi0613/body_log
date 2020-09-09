class UsersController < ApplicationController
  def show
    @logs = Log.where(user_id: current_user)
    @data = []

    @logs.each do |log|
      @data.push([log.date, log.weight])
    end


  end

  def edit
  end
end
