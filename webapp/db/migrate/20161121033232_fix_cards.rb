class FixCards < ActiveRecord::Migration
  def change
    remove_column :cards, :deck_id
    add_column :cards, :user_id, :integer
  end
end
