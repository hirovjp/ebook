class HomeController < ApplicationController
  def home
    @wordlist = Wordlist.all.paginate(:page => params[:page], :per_page => 10)
    @user = User.find(1)
    @demo = Wordlist.joins(:learnwordlists).where(:learnwordlists => {:user_id => @user.id})
  end

  def new
    @wordlist = Wordlist.new
  skip_before_action :authorize
  def index
  end
end
