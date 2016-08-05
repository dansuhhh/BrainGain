class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title, null: false
      t.text :description
      t.integer :subject_id, null: false

      t.timestamps null: false
    end
  end
end
