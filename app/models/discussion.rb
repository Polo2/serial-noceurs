class Discussion
  def self.for(current_user)
    users = (current_user.received_messages + current_user.sent_messages).map do |message|
      if current_user == message.sender
        message.receiver
      else
        message.sender
      end
    end
    users = users.uniq

    users.map do |user|
      new(user, current_user)
    end
  end

  attr_reader :opposite_user

  def initialize(opposite_user, current_user)
    @opposite_user = opposite_user
    @current_user = current_user
  end

  def last_message
    Message.where('(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)', @current_user.id, @opposite_user.id, @current_user.id, @opposite_user.id)
           .order(created_at: :desc)
           .first
  end
end
