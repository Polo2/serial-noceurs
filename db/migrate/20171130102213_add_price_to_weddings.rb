class AddPriceToWeddings < ActiveRecord::Migration[5.0]
  def change
    add_column :weddings, :price, :integer
  end
end
