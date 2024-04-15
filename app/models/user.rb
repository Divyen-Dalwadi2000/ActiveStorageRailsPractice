class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  private
  def send_welcome_email
    #  WelcomeJob.perform_now(self)  
     WelcomeJob.set(wait: 2.minutes).perform_later(self)
  end
end
