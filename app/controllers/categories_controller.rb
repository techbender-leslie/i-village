class CategoriesController < ApplicationController

def index
  @categories = Category.all
  @recommend = @category[0]
  @classified = @category[1]
  @announcement = @category[2]
  @safety = @category[3]
  @event = @category[4]
  @other = @category[5]
end

def show
  @conversations = Conversation.where(category_id: params[:id])
  @category = Category.find(params[:id])
end


end
