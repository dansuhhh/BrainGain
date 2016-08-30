class ReAddSubscriptionFlagBool < ActiveRecord::Migration
  def change
    add_column :subscriptions, :flag, :boolean, :default => false
  end
end
