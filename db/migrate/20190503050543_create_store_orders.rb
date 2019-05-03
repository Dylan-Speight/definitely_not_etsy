class CreateStoreOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :store_orders do |t|
      t.integer :store_id
      t.integer :order_id

      t.timestamps
    end
    add_index :store_orders, :store_id
    add_index :store_orders, :order_id
  end
end
