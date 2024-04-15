class WelcomeJob < ApplicationJob
  queue_as :default

  def perform(user)
    logger.info "$$$$$$$$$$$$$-------------------- Welcome job started #{user.email} "
    UserMailer.welcome_email(user).deliver_now
    logger.info "$$$$$$$$$$$$$-------------------- Welcome job finished  #{user.email} "
  end
end
