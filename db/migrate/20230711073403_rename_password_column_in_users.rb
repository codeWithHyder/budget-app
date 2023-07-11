class RenamePasswordColumnInUsers < ActiveRecord::Migration[7.0]
  def change
     rename_column :users, :password, :encrypted_password
  end
end
