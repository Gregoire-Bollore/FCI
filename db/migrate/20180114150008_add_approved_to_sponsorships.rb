class AddApprovedToSponsorships < ActiveRecord::Migration
  def change
    add_column :sponsorships, :approved, :boolean, null: false, default: false
  end
end
