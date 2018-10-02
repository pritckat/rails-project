class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])

        redirect_to user_path(@user)
    end
end
