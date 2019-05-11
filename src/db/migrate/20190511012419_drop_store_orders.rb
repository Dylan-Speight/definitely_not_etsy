class DropStoreOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :store_orders do |t|
      t.integer :store_id
      t.integer :order_id
      
      t.timestamps null: false
    end
  end
end
