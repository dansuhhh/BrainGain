class RemoveSubscriptionFlagString < ActiveRecord::Migration
  def change
    remove_column :subscriptions, :flag
  end
end
