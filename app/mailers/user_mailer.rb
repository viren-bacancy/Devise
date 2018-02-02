class UserMailer < ApplicationMailer
 default to: Proc.new { User.pluck(:email) },
 from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://dry-forest-67229.herokuapp.com/'
    attachments['abc.png'] = File.read('app/assets/images/wc1694805.png')
    mail(subject: 'Welcome to My Awesome Site')
  end
end
