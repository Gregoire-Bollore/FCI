class AddPhoneNumberToFamiliesAndSons < ActiveRecord::Migration
  def change
    add_column :families, :phone_number, :string
    add_column :sons, :phone_number, :string
  end
end
