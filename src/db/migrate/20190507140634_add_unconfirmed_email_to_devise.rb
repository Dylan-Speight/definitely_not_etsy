# class AddConfirmableToDeviseV1 < ActiveRecord::Migration[5.2]
#   def change
#     change_table(:users) do |t| 
#       t.confirmable 
#     end
#     add_index  :users, :confirmation_token, :unique => true 
#   end
# end

class AddUnconfirmedEmailToDevise < ActiveRecord::Migration[5.2]


  def up
      # add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
    end
  
    def down
      # remove_columns :users, :unconfirmed_email # Only if using reconfirmable
    end
  end