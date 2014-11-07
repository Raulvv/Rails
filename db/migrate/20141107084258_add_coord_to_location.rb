class AddCoordToLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :latitude, :decimal
  	add_column :locations, :longitude, :decimal
  end
end
