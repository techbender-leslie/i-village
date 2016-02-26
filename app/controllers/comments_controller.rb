class CommentsController < ApplicationController

before_filter :authorize

def index
  @comments = Comment.all
end

def show
  @conversation = Conversation.find(params[:conversation_id])
  @comment = @conversation.comments.find(params[:id])
end

def new
  @comment = Comment.new
end

def create
  @conversation = Conversation.find(params[:conversation_id])
  @comment = @conversation.comments.create(comment_params)
  redirect_to conversation_path(@conversation)
end

def destroy
  @conversation = Conversation.find(params[:conversation_id])
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to conversation_path(@conversation)
end

private

def comment_params
  params.require(:comment).permit(:user_name, :body, :conversation_id)
end

end
