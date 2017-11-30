class Discussion
  def self.for(user)
    discussions = (user.received_messages + user.sent_messages).map do |message|
      if user == message.sender
        message.receiver
      else
        message.sender
      end
    end
    discussions.uniq
  end
end
