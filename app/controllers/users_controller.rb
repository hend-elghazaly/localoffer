class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # Create the user from params
    @user = User.new(params[:user])
    if @user.save
      # Deliver the signup email
      #UserNotifier.send_signup_email(@user).deliver
      WelcomeMailer.welcome(@user).deliver_now
      redirect_to(@user, :notice => 'Signed up successfully.')
    else
      render :action => 'new'
    end
  end
end
