class UsersController < ApplicationController
  def show
    @logs = Log.where(user_id: current_user).order(date: "ASC")
    @data = []
    @today = Date.today
    @min = 1000
    @max = 0

    @logs.each do |log|
      @data.push([log.date, log.weight])
      if @min > log.weight
        @min = log.weight
      elsif @max < log.weight
        @max = log.weight
      end
    end


  end

  def edit
  end
end
