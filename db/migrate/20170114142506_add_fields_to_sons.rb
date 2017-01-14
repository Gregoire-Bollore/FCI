class AddFieldsToSons < ActiveRecord::Migration
  def change
    add_column :sons, :first_name, :string
    add_column :sons, :last_name, :string
    add_column :sons, :ordination_date, :date
    add_column :sons, :address, :string
    add_column :sons, :street_number, :string
    add_column :sons, :route, :string
    add_column :sons, :postal_code, :string
    add_column :sons, :locality, :string
    add_column :sons, :administrative_area_level_1, :string
    add_column :sons, :country, :string
    add_column :sons, :bio, :string
  end
end
