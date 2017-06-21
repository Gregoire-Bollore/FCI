class ChangeBioTypeForSons < ActiveRecord::Migration
  def change
    change_column :sons, :bio, :text
  end
end
