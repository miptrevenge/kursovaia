class SendNapravasController < ApplicationController
    def create
        @subjects = Subject.all
        SendNapravaMailer.send_naprava.deliver_now
    end
end