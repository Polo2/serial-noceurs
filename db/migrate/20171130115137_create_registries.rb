class CreateRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :registries do |t|
      t.integer :guest
      t.references :user, foreign_key: true
      t.references :wedding, foreign_key: true

      t.timestamps
    end
  end
end
