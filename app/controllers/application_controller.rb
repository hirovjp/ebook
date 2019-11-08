class ApplicationController < ActionController::Base
  before_action :authorize
  before_action :back_logout
  protected

  def authorize
    @user = User.find_by_id(session[:user_id])
    if @user == nil
      redirect_to '/login', :notice => 'You must login first'
    end
  end

  # def is_admin
  #   @user = User.find_by_id(session[:user_id])
  #   if @user.level == 1
  #     redirect_to '/category'
  #   else
  #     redirect_to '/result'
  #   end
  # end

  def back_logout
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
end
