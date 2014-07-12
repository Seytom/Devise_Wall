class WallController < ApplicationController
  def index
  	#devise defined current_user method
  	@user = current_user
  	#prepare for comment and message forms
  	@message = Message.new
  	@comment = Comment.new
  	#prepare for printing out messages and related comments
  	@messages = Message.all
  	
  end

  def message
    message=Message.new(message_params)
    message.save
    @message=Message.new
    @comment=Comment.new
    @messages = Message.all
    
    redirect_to root_path
  end

  def comment
  end

  def message_params
    params.require(:message).permit(:message,:user_id)
  end

  def comment_params
    params.require(:comment).permit(:comment,:message_id, :user_id)
  end

end
