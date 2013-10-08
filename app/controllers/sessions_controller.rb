class SessionsController < ApplicationController

  def create
    @user= User.find()
    if User.authenticate(params[:email], params[:password])

      session[:user_id] = 2
    end
  end
end
