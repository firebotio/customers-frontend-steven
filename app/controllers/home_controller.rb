class HomeController < ApplicationController
  def email
    response = firebot_service.email(
      from:    ENV["HOME_EMAIL_TO"],
      subject: "Business Sign Up",
      text:    "Name: #{params[:name]}\nEmail: #{params[:email]}",
      to:      ENV["HOME_EMAIL_TO"]
    )
    redirect_to root_path
  end

  def index
  end
end
