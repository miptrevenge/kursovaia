class PasswordResetsController < ApplicationController
    def create
        @subjects = Subject.all
        PasswordResetMailer.reset_email.deliver_now
    end
end