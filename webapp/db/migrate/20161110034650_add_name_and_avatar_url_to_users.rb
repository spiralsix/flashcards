class AddNameAndAvatarUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :avatar_url, :string
  end
end
