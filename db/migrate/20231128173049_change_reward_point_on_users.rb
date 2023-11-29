class ChangeRewardPointOnUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :reward_point
    add_column :users, :reward_point, :integer, default: 0
    remove_column :users, :integer
  end
end
