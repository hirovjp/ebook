class HomeController < ApplicationController
  skip_before_action :authorize, only: :index

  def home
    @wordlist = Wordlist.all.paginate(:page => params[:page], :per_page => 5)
    @user = User.find(session[:user_id])
    @demo = Wordlist.joins(:learnwordlists).where(:learnwordlists => {:user_id => @user.id})
  end

  def action_user

    @results = Result.joins(:lesson).where('user_id' => @user.id).paginate(:page => params[:page], :per_page => 5)
  end
end
