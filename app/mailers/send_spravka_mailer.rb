class SendSpravkaMailer < ApplicationMailer
    def send_spravka
    
        mail to: 'zamdek@mail.ru', subject: 'Сформированная справка'
    end 
end