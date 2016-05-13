class AddNameAndExpiresAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :expired_at, :datetime
    add_index :users, :expired_at
  end
end
