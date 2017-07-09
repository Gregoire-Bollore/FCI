class AddAdminToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :admin, :boolean, null: false, default: false
  end
end
