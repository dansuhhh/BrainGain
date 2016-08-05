class AddIndexToDecksSubjectId < ActiveRecord::Migration
  def change
    add_index :decks, :subject_id
  end
end
