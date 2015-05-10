class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def firebot_service
    @firebot_service ||= Firebot::Service.new(
      application_key: ENV["FIREBOT_APPLICATION_KEY"],
      application_id:  ENV["FIREBOT_APPLICATION_ID"]
    )
  end
end
