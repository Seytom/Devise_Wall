class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    comment=Comment.new(comment_params)
    comment.save
    @message=Message.new
    @comment=Comment.new
    messages=Message.all
    @messages = Message.all
    @user = current_user
    render "wall/index"
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  def comment_params
    params.require(:comment).permit(:comment,:message_id, :user_id)
  end

end