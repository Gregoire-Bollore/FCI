class Son < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :sponsorships, dependent: :destroy
  has_many :families, through: :sponsorships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :level, :ordination_date, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio, presence: true
  validates :email, uniqueness: true

  def name
    "#{first_name} #{last_name}"
  end
end
