class Family < ActiveRecord::Base
  after_create :send_welcome_email, :send_maman_email
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_one :sponsorship, dependent: :destroy
  has_one :son, through: :sponsorship
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :last_name, :first_names_and_ages, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio, presence: true
  validates :email, uniqueness: true

  private

  def send_welcome_email
    FamilyMailer.welcome(self).deliver_now
  end

  def send_maman_email
    FamilyMailer.inform(self).deliver_now
  end

  def name
    "#{last_name}"
  end
end
