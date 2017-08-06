class AddCoordinatesToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :latitude, :float
    add_column :families, :longitude, :float
  end
end
