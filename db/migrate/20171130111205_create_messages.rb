class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
