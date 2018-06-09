class AddDefaultValueToNumberOfSponsorships < ActiveRecord::Migration
  def change
    change_column :sons, :number_of_sponsorships, :integer, default: 0
  end
end
