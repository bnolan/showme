class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end
  
  def create
    current_user.messages.create! message_params
    redirect_to :action => :index
  end
  
  def message_params
    params.require(:message).permit(:content, :to_id)
  end
  
end
