class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :store_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
    add_index :products, :store_id
  end
end
