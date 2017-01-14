class Family < ActiveRecord::Base

  has_one :sponsorship, dependent: :destroy
  has_one :son, through: :sponsorship
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
