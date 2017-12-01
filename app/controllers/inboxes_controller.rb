class InboxesController < ApplicationController

  def index
    @user = User.find(params[:user_id])

    @messages = Message.where('(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)', current_user.id, @user.id, @user.id, current_user.id)
           .order(created_at: :desc)

    @message = Message.new(sender: current_user, receiver: @user)
  end
end
