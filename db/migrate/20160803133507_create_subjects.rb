class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.text :description
      t.integer :author_id, null: false

      t.timestamps null: false
    end

    add_index :subjects, :author_id
  end
end
