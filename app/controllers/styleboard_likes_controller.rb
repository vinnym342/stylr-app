class StyleboardLikesController < ApplicationController
  before_action :authenticate_user!
  def patch
      like = StyleboardLike.find_by(user: current_user,styleboard_id: id_params)
      if like.present?
        if like.liked == (liked_param == 'true')
          like.destroy
        else
          like.liked = liked_param
          like.save
        end
      else
         like = StyleboardLike.new(user: current_user,styleboard_id: id_params,liked: liked_param)
         like.save
      end
      redirect_to styleboards_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def liked_param
      params.require(:styleboard).require(:like)
    end
    def id_params
      params.require(:styleboard_id)
    end
end
