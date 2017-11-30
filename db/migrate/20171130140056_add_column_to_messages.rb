class AddColumnToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :sender_id, :string
    add_column :messages, :receiver, :string
  end
end
