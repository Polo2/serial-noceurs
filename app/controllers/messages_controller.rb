class MessagesController < ApplicationController
before_action :set_message, only: [:edit, :update, :destroy]

  def new
    @wedding = Wedding.find(params[:wedding_id])
    @message = Message.new(sender: current_user, receiver: @wedding.user)
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
    @user_discussions = Discussion.for(current_user)
    @user_id = current_user.id

    # @messages = Message.all
    # @sender = current_user
    # @wedding = Wedding.find(params[:user_id])
    # @receiver =
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
    params.require(:message).permit(:title, :content, :timestamps, :sender_id, :receiver_id)
  end

end
