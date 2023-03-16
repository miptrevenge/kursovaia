class SendNapravaMailer < ApplicationMailer
    def send_naprava
        @subjects = Subject.all
        mail to: 'zamdek@mail.ru', subject: 'Сформированное направление'
    end 
end