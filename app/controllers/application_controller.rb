class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   if current_user.profile.present?
  #     super
  #   else
  #     new_profile_path
  #   end
  # end


end
