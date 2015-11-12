class AddDefaultsToUsers < ActiveRecord::Migration
  def up
  	change_column_default :users, :number_of_questions_answered, 0
  	change_column_default :users, :number_of_questions_correct, 0
  end
end
