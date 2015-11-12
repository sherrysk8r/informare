class AddSourceToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :date_said, :string
    add_column :quotes, :source, :string
  end
end
