class Family < ActiveRecord::Base
  after_create :send_welcome_email, :send_maman_email
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_one :sponsorship, dependent: :destroy
  has_one :son, through: :sponsorship
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :last_name, :first_names_and_ages, :phone_number, :address, :postal_code, :locality, :administrative_area_level_1, :country, :bio, presence: true
  validates :email, uniqueness: true

  # For activeadmin
  def display_name
    return 'Famille - ' + self.last_name + " - # de parrainages (" + self.number_of_sponsorships.to_s + ")"
  end

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
