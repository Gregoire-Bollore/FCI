class AddCoordinatesToSons < ActiveRecord::Migration
  def change
    add_column :sons, :latitude, :float
    add_column :sons, :longitude, :float
  end
end
