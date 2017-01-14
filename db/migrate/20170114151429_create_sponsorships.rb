class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.references :family, index: true
      t.references :son, index: true
      t.string :status
      t.timestamps null: false
    end
  end
end
