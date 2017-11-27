class CreateWeddings < ActiveRecord::Migration[5.0]
  def change
    create_table :weddings do |t|
      t.title :string
      t.description :text
      t.date :date
      t.location :string
      t.capacity :integer
      t.references :user

      t.timestamps
    end
  end
end
