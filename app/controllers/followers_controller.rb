class FollowersController < ApplicationController
  before_action :set_profile, only: [:create]
  before_action :set_follow, only: [:create]

  def create
    puts "=" * 50
    pp @follow
    puts "=" * 50

    if !@follow.present?
      @follower = Follower.new(follower_id: current_user.id, followee_id: @profile.user.id)
      puts "@follower"
      puts "="*50
      pp @follower
      puts "="*50
        if @follower.save
          redirect_to profile_path(@profile)
        else
          format.html { render :new }
          format.json { render json: @follower.errors, status: :unprocessable_entity }
        end
    else
      puts "@follow"
      puts "="*50
      pp @follow
      puts "="*50
      if @follow.destroy
      # else
      #   format.html { redirect_to profile_path(@profile), notice: 'Unfollow was not successfull.' }
      redirect_to profile_path(@profile)
      end
    end

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def set_follow
      @follow = Follower.find_by(follower_id: current_user.id,followee_id: profile_user_id)
    end
    def profile_user_id
      profile = Profile.find(params[:profile_id])
      profile.user.id
    end
end
