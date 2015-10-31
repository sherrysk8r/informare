class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :body_of_text
      t.integer :candidate_id
      t.integer :issue_id

      t.timestamps null: false
    end
  end
end
