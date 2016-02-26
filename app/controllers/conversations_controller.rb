class ConversationsController < ApplicationController

before_filter :authorize

def index 
  if params[:type]
    @conversations = Conversation.where(category_id: params[:type])
  else
    @conversations = Conversation.order("created_at DESC")
    @categories = Category.all
    render :index
  end
end

def show
  @conversation = Conversation.find(params[:id])
  @comments = @conversation.comments
  # @comment = @conversation.comments.build
  # @comments = @conversation.comments.all
  end

def new
  @conversation = Conversation.new
end

def edit
  @conversation = Conversation.find(params[:id])
  render :edit
end

def create
  @conversation = Conversation.new(conversation_params)
  if @conversation.save
    render :show
  else
    render :new
  end
end

def update
  @conversation = Conversation.find(params[:id])
  if @conversation.update(conversation_params)
    redirect_to conversation_path(@conversation)
  else
    render :edit
  end
end

def destroy
  @conversation = Conversation.find(params[:id])
  @conversation.destroy
  redirect_to conversations_path
end

private

def conversation_params
  params.require(:conversation).permit(:title, :category_id, :content, :picture)
end


end
