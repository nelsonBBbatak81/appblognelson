class ContactMesssageMailer < ApplicationMailer
    # default from: 'notifications@example.com'

    def contuct_message(data)
        @message = data
        mail(to: @message.email, subject: 'Welcome to My Awesome Site')
    end
end
