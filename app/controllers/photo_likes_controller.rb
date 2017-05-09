class PhotoLikesController < ApplicationController
  before_action :authenticate_user!
  def patch
      if like_params[:like] == '1'
        liked_param = true
      else
        liked_param = false
      end

      like = PhotoLike.find_by(user: current_user,photo_id: id_params[:photo_id])
      if like.present?
        if like.liked == liked_param
          like.destroy
        else
          like.liked = liked_param
          like.save
        end
      else
         like = PhotoLike.new(user: current_user,photo_id: id_params[:photo_id],liked: liked_param)
         like.save
      end
      redirect_to styleboard_photos_path(id_params[:styleboard_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.require(:photo).permit(:like)
    end

    def id_params
      params.permit(:styleboard_id,:photo_id)
    end
end
