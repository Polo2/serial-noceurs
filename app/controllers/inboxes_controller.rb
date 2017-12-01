class InboxesController < ApplicationController

  def index
    @user = User.find(params[:user_id])

    @messages = Message.where('(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)', 4, @user.id, @user.id, 4)
           .order(created_at: :desc)

    @message = Message.new
  end
end
