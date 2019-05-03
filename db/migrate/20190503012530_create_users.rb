class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.varchar :username
      t.varchar :email_address
      t.varchar :address

      t.timestamps
    end
  end
end
