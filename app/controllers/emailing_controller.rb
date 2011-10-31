class EmailingController < ApplicationController
  def index
    @text = Text.find(params[:text])
    @email = current_user.email
  end

  def email_me
    @user = current_user
    @text = Text.find(params[:text])
    EmailText.email_me(@user, @text).deliver
    flash[:notice] = "Your email has been sent."
    redirect_to :controller => 'texts', :action => "index"
  end
  
  def email_friend
    @friend_email = params["friend"]
    @user = current_user
    @text = Text.find(params[:text])
    EmailText.email_friend(@friend_email, @user, @text).deliver
    flash[:notice] = "Your email has been sent."
    redirect_to :controller => 'texts', :action => "index"
  end
end
