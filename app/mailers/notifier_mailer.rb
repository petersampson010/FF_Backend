class NotifierMailer < ApplicationMailer

    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.email}", :subject => "Registration Confirmation")
    end


    def simple_message(message, recipient)
        puts 'hitting'
        puts recipient.class
        puts message.class
        return mail(
            to:  recipient,
            subject: 'test',
            body: message
        )
    end 
end
