class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :name
      t.string :question
      t.string :answer
      t.text :desc
      t.boolean :shared

      t.timestamps null: false
    end
  end
end
