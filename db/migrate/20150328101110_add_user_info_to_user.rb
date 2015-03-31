class AddUserInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :facebook, :string
    add_column :users, :behance, :string
    add_column :users, :dribbble, :string
    add_column :users, :twitter, :string
    add_column :users, :about_me, :text
  end
end
