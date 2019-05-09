class RemoveStoreNameFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :store_name
  end
end
