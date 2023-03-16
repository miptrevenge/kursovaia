class PasswordResetMailer < ApplicationMailer
    def reset_email
        @subjects = Subject.all
        mail to: 'zamdek@mail.ru', subject: 'Сформированный отчет'
    end 
end