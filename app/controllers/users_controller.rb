class UsersController < ApplicationController
  def new
    @user = User.new
    render "_new"
  end

  def create
    @user = User.new(params[:user])
    #@user.non_fb_signup = true
    if @user.save
      create_session
      UserMailer.welcome_signup(@user).deliver
      redirect_to @user
    else
      @error = @user.errors.full_messages.join(". ")
      render "_new"
    end
  end

  def show
    @user = User.find(params[:id])
    @mytales = @user.mytales
    @mytale = @mytales.first
  end
end
