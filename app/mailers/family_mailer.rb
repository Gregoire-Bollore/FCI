class FamilyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.family_mailer.welcome.subject
  #
  def welcome(family)
    @family = family  # Instance variable => available in view

    mail(to: @family.email, subject: 'Bienvenue sur FCI !')
    # This will render a view in `app/views/family_mailer`!
  end

  def inform(family)
    @family = family
    mail(to: 'famillesducoeurimmacule@gmail.com', subject: "Nouvelle inscription d'une famille - Famille #{@family.last_name}")
  end

end
