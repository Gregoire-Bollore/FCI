class Son < ActiveRecord::Base

  has_many :sponsorships, dependent: :destroy
  has_many :families, through: :sponsorships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
