class ApplicationController < ActionController::Base
  before_action :authorize
  before_action :back_logout
  # before_action :checkLogin
  protected

  def authorize
    @user = User.find_by_id(session[:user_id])
    if @user == nil
      redirect_to '/login', :notice => 'You must login first'
    end
  end

  def back_logout
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

  def current_u
    User.find(session[:user_id])
  rescue ActiveRecord::RecordNotFound
    user = User.create
    session[:user_id] = user.id
    user
  end

end
