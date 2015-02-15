class MessagesController < ApplicationController
  def create
  	@message = Message.new(message_params)
    @message.user = current_user
    @message.save
    @messages = Message.last(50)
  	respond_to do |f|
  		f.js
  	end
  end

  def index
    @messages = Message.last(50)
    respond_to do |f|
      f.js
    end

  end

  private
  def message_params
  	params.require(:message).permit(:message)
  end
end
