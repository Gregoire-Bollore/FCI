class Sponsorship < ActiveRecord::Base
  belongs_to :son, counter_cache: :number_of_sponsorships
  belongs_to :family, counter_cache: :number_of_sponsorships
  after_save :send_inform_email

  def display_name
    @sponsorship_family = Family.where(id: self.family_id).first
    @sponsorship_son = Son.where(id: self.son_id).first
    if @sponsorship_family == nil || @sponsorship_son == nil
      return nil
    else
      return 'Famille  - ' + @sponsorship_family.last_name + " || " + @sponsorship_son.level + " - " + @sponsorship_son.last_name
    end
  end

  private

  def send_inform_email
    SponsorshipMailer.inform_son(self).deliver_now
    SponsorshipMailer.inform_family(self).deliver_now
  end
end
