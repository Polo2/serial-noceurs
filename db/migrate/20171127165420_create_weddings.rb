class CreateWeddings < ActiveRecord::Migration[5.0]
  def change
    create_table :weddings do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
      t.integer :capacity
      t.references :user

      t.timestamps
    end
  end
end
