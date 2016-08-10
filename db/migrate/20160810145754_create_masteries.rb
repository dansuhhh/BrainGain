class CreateMasteries < ActiveRecord::Migration
  def change
    create_table :masteries do |t|
      t.integer :user_id, null:false
      t.integer :card_id, null: false
      t.integer :level, null: false, default: 0

      t.timestamps null: false
    end

    add_index :masteries, :user_id
    add_index :masteries, :card_id
    add_index :masteries, [:user_id, :card_id], unique: true
  end
end
