class RemoveStatusToSponsorships < ActiveRecord::Migration
  def change
    remove_column :sponsorships, :status
  end
end
