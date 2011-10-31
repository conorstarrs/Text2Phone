class EmailingController < ApplicationController
  def index
  end

  def create
    EmailText.send_by_email.deliver
    flash[:notice] = "Your message has been sent."
    redirect_to root_path
  end

end
