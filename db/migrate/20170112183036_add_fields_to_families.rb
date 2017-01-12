class AddFieldsToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :last_name, :string
    add_column :families, :first_names_and_ages, :string
    add_column :families, :address, :string
    add_column :families, :street_number, :string
    add_column :families, :route, :string
    add_column :families, :postal_code, :string
    add_column :families, :locality, :string
    add_column :families, :administrative_area_level_1, :string
    add_column :families, :country, :string
    add_column :families, :bio, :string
  end
end
