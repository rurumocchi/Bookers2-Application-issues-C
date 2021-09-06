class ContactMailer < ApplicationMailer

  def send_when_admin_reply(title,contact, group_users)
    @title = title
    @contact = contact
    mail bcc: group_users.pluck(:email), subject: title
  end

end
