# This file lives in the app/mailers directory
# See http://guides.rubyonrails.org/action_mailer_basics.html for details

class ContactsMailer < ActionMailer::Base
  default from: "admin@example.com"

  def general_message(contact)
    @contact = contact
    mail( :to => "davidruizlopez2501@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
