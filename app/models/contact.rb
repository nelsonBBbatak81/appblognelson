class Contact < MailForm::Base

  append :remote_ip, :user_agent, :session
  
  attributes :name, validate: true
  attributes :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attributes :file, attachment: true

  attributes :message
  attributes :nickname, captcha: true

  def headers
    { 
      subject: "My Contact Form",
      to: "bataksigaol@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
