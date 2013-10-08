class UsersController < ApplicationController
  def index

  end



  def new
    @user =User.new
  end

  def create
    p params[:user]
    @user =User.create(name:params[:user][:name], password: params[:user][:password])
    redirect_to user_path(@user)

  end

  def show
   @user = User.find(params[:id])
  end


end
