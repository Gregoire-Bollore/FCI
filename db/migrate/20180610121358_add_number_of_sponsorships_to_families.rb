class AddNumberOfSponsorshipsToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :number_of_sponsorships, :integer, default: 0
  end
end
