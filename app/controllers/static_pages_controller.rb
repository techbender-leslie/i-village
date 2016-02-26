class StaticPagesController < ApplicationController
  
  def home
    @conversations = Conversation.order("created_at DESC")
    @users = User.all

  end

  def about
  end

  def contact
  end
end
