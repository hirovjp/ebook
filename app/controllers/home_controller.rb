class HomeController < ApplicationController
  skip_before_action :authorize, only: :index

  def home
    @wordlist = Wordlist.all.paginate(:page => params[:page], :per_page => 5)
    @user = User.find(session[:user_id])
    @demo = Wordlist.joins(:learnwordlists).where(:learnwordlists => {:user_id => @user.id})
    learn_id = Learnwordlist.select(:wordlist_id).where(:user_id => @user.id)
    @demo = Wordlist.all.where(id: learn_id)
    follow_id = Follow.select(:following_id).where(:follower_id => @user.id)
    @actions = Result.where(:user_id => follow_id)
  end

  def new
    @wordlist = Wordlist.new
  end
end
