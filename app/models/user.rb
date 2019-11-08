class User < ApplicationRecord
  has_many :results, :dependent => :destroy
  has_many :learnwordlists, :dependent => :destroy

  def User.authenticate(email, password)
    user = find_by_email(email)
    if user.password == password
        user
    end
  end
end
