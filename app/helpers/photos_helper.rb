module PhotosHelper
  def self.liked?(user,photo)
    like = PhotoLike.find_by(liked: true, photo: photo,user: user)
    if like.present?
      '<i class="fa fa-thumbs-up" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>'.html_safe
    end
  end

  def self.disliked?(user,photo)
    like = PhotoLike.find_by(liked: false, photo: photo,user: user)
    like.present?
    if like.present?
      '<i class="fa fa-thumbs-down" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>'.html_safe
    end
  end
  def self.ratio_of_likes(photo)
      all_count = PhotoLike.where(photo: photo).count.to_f
      like_count = PhotoLike.where(photo: photo,liked: true).count.to_f
      if all_count == 0
        ratio = 0.5
      elsif like_count == 0
        ratio = 0
      else
        ratio = (like_count/all_count)
      end
      ratio = (ratio * 100).to_i
  end
end
