class SendSpravkasController < ApplicationController
    def create
        SendSpravkaMailer.send_spravka.deliver_now
    end
end