class Family < ActiveRecord::Base

  has_one :sponsorship, dependent: :destroy
  has_one :son, through: :sponsorship
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :last_name, :first_names_and_ages, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio, presence: true
  validates :email, uniqueness: true

  def name
    "#{last_name}"
  end
end
