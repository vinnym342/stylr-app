module StyleboardsHelper
  def self.liked?(user,styleboard)
    like = StyleboardLike.find_by(liked: true, styleboard: styleboard,user: user)
    if like.present?
      '<i class="fa fa-thumbs-up" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>'.html_safe
    end
  end

  def self.disliked?(user,styleboard)
    like = StyleboardLike.find_by(liked: false, styleboard: styleboard,user: user)
    like.present?
    if like.present?
      '<i class="fa fa-thumbs-down" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>'.html_safe
    end
  end
  def self.ratio_of_likes(styleboard)
      all_count = StyleboardLike.where(styleboard: styleboard).count.to_f
      like_count = StyleboardLike.where(styleboard: styleboard,liked: true).count.to_f
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
