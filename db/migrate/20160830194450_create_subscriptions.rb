class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id, null: false
      t.integer :subject_id, null: false
      t.string :flag, null: false, default: false

      t.timestamps null: false
    end

    add_index :subscriptions, :user_id
    add_index :subscriptions, :subject_id
    add_index :subscriptions, [:user_id, :subject_id], unique: true
  end
end
