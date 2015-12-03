class CreateUserStreaks < ActiveRecord::Migration
  def change
    create_table :user_streaks do |t|
      t.integer :user_id
      t.integer :streak
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps null: false
    end
  end
end
