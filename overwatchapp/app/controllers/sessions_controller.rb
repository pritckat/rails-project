class SessionsController < ApplicationController

    def new
        if 
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :user_id
        redirect_to login_path
    end
end
