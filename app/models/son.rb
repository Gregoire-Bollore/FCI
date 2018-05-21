class Son < ActiveRecord::Base
  after_create :attribute_family, :send_welcome_email, :send_maman_email
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :sponsorships, dependent: :destroy
  has_many :families, through: :sponsorships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :level, :ordination_date, :phone_number, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio, presence: true
  validates :email, uniqueness: true



  private

  def send_welcome_email
    SonMailer.welcome(self).deliver_now
  end

  def send_maman_email
    SonMailer.inform(self).deliver_now
  end

  def name
    "#{first_name} #{last_name}"
  end

  def attribute_family
    Sponsorship.create
  end

end
