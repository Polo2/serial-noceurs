class RemoveSenderAndReceiver < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :sender_id
    remove_column :messages, :receiver
  end
end
