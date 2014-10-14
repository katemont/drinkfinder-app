class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile_pic, :string
    add_column :users, :username, :string
    add_column :users, :role, :string
  end
end
