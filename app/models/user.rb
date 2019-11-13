class User < ApplicationRecord
  has_many :results, :dependent => :destroy
  has_many :learnwordlists, :dependent => :destroy

  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
  has_many :followers, through: :received_follows, source: :follower

  def User.authenticate(email, password)
    if user = find_by_email(email)
      if user.password == password
        user
      end
    end
  end

  def follow(current_user_id, followed_user_id)
    Follow.create(following_id: followed_user_id, follower_id: current_user_id)
  end

  def unfollow(current_user_id, followed_user_id)
    Follow.find_by(following_id: followed_user_id, follower_id: current_user_id).destroy
  end
end
