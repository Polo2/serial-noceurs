class RemoveStatutForWeddings < ActiveRecord::Migration[5.0]
  def change
    remove_column :weddings, :statut
  end
end
