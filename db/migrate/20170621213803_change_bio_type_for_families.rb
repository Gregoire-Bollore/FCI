class ChangeBioTypeForFamilies < ActiveRecord::Migration
  def change
    change_column :families, :bio, :text
  end
end
