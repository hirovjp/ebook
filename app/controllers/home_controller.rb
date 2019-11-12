class HomeController < ApplicationController
  skip_before_action :authorize

  def home
    @wordlist = Wordlist.all.paginate(:page => params[:page], :per_page => 5)
    @user = User.find(session[:user_id])
    @demo = Wordlist.joins(:learnwordlists).where(:learnwordlists => {:user_id => @user.id})
  end

  def new
    @wordlist = Wordlist.new
  end
end
