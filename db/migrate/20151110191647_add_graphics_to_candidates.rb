class AddGraphicsToCandidates < ActiveRecord::Migration
  def change
  	add_column :candidates, :graphic, :string
  	add_column :candidates, :image, :string
  end
end
