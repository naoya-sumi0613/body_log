class LogsController < ApplicationController
  def new
    @user = current_user
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    @log.user_id = current_user.id
    @log.save
    redirect_to user_path(current_user)
  end


  private
  def log_params
    params.require(:log).permit(:date, :weight, :user_id)
  end
end
