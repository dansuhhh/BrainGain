class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :question, null: false
      t.text :answer, null: false
      t.integer :deck_id, null: false

      t.timestamps null: false
    end

    add_index :cards, :deck_id
  end
end
