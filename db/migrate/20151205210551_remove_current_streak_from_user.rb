class RemoveCurrentStreakFromUser < ActiveRecord::Migration
  def down
  	remove_column :users, :current_streak
  end
end
