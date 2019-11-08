class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      if user.level == 1
        redirect_to categories_url
      else
        redirect_to results_url
      end
    else
      redirect_to login_url, :alert => "Invalid username/password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', :notice => "Logged out"
  end
end
