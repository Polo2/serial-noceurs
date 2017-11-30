class AddStatutToWeddings < ActiveRecord::Migration[5.0]
  def change
    add_column :weddings, :statut, :boolean
  end
end
