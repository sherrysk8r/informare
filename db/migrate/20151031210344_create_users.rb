class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.integer :number_of_questions_answered
      t.integer :number_of_questions_correct
      t.integer :current_streak

      t.timestamps null: false
    end
  end
end
