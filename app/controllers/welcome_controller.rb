class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @myprofile = Profile.find_by(user: current_user)
    @questions_asked = Conversation.where(asker_id: current_user.id, resolved: false)
    @questions_to_answer = Conversation.where(stylist_id: current_user.id, resolved: false)
    @their_questions_answered = Conversation.where(stylist_id: current_user.id, resolved: true)
    @my_questions_answered = Conversation.where(asker_id: current_user.id, resolved: true)
  end
end
