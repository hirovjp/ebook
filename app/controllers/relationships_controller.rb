class RelationshipsController < ApplicationController
  skip_before_action :authorize
  def follow_user
    @user = User.find_by!(id: params[:user_id])
    if current_u.follow(session[:user_id], @user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow_user
    @user = User.find_by!(id: params[:user_id])
    if current_u.unfollow(session[:user_id], @user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end
end
