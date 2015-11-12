class AddCurrentStreakDeaultToUsers < ActiveRecord::Migration
  def up
  	change_column_default :users, :current_streak, 0
  end
end
