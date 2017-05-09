module ProfilesHelper
  def self.following?(follower,followee)
    record = Follower.where(follower_id: follower.id, followee_id: followee.id)
    if record.present?
      'Unfollow'
    else
      'Follow'
    end
  end
end
