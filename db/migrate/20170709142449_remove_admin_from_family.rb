class RemoveAdminFromFamily < ActiveRecord::Migration
  def change
    remove_column :families, :admin
  end
end
