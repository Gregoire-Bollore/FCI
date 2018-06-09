class AddNumberOfSponsorshipsToSons < ActiveRecord::Migration
  def change
    add_column :sons, :number_of_sponsorships, :integer
  end
end
