class SonMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(son)
    @son = son  # Instance variable => available in view

    mail(to: @son.email, subject: 'Bienvenue sur FCI !')
    # This will render a view in `app/views/son_mailer`!
  end

  def inform(son)
    @son = son
    mail(to: 'contact@famillesducoeurimmacule.com', subject: "Nouvelle inscription d'un prêtre / diacre - #{@son.first_name} #{@son.last_name}")
  end

end
