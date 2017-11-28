class AddPhotoToWeddings < ActiveRecord::Migration[5.0]
  def change
    add_column :weddings, :photo, :string
  end
end
