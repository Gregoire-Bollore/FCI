class AddLevelToSons < ActiveRecord::Migration
  def change
    add_column :sons, :level, :string
  end
end
