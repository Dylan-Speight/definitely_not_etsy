class CreateStoreNames < ActiveRecord::Migration[5.2]
  def change
    create_table :store_names do |t|

      t.timestamps
    end
  end
end
