class MessagesController < ApplicationController
before_action :set_message, only: [:edit, :update, :destroy]

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
      if @message.save
        redirect_to messages_path
      else
        redirect_to new_message_path
      end
  end

  def index
    @messages = Message.all
  end

  def destroy
    @message.destroy
    redirect_to message_path
  end

  def update
    ap message_params
    @message.update(message_params)
    redirect_to message_path
  end

 private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:title, :content, :timestamps)
  end

end
