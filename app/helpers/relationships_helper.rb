module RelationshipsHelper
  def current_user_is_following(current_user_id, followed_user_id)
    Follow.find_by(follower_id: current_user_id, following_id: followed_user_id)
  end
end
