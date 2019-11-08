class HomeController < ApplicationController
  def home
    @wordlist = Wordlist.limit(5)
    @user = User.find(1)
    @demo = Wordlist.joins(:learnwordlists).where(:learnwordlists => {:user_id => @user.id})
    @cate = Category.find(1)
  end

  def new
    @wordlist = Wordlist.new
  end
end
