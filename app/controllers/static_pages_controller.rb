class StaticPagesController < ApplicationController
  
  def home
    @conversations = Conversation.order("created_at DESC")
    # @users = User.all
    @users = User.order("apartment DESC")

  end

  def about
  end

  def contact
  end
end
