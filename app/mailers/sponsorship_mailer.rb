class SponsorshipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #

  def inform_son(sponsorship)
    @son = sponsorship.son
    @family = sponsorship.family
    mail(to: @son.email, subject: 'Une famille vous a été attribuée !')
  end

  def inform_family(sponsorship)
    @son = sponsorship.son
    @family = sponsorship.family
    mail(to: @family.email, subject: "Un #{@son.level.downcase} vous a été attribué !")
  end

end
