class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def welcome
    @user_email = current_user.email
    @user_last_signin = current_user.last_sign_in_at
  end
  
  def info
    @user_email = current_user.email
    @user_last_signin = current_user.last_sign_in_at
  end
end