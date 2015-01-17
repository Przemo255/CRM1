class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end
    def twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "3ik7pAYntKAWHI89hBtT2KudU"
      config.consumer_secret     = "rJuXBg1glT5WOSaSrLkVAMKBrf8dC5U9G4Sr70cvDnhUgr0CUa"
      config.access_token        = "2931904281-PkZFtZuXRxl57WgOfc8WucO9XpZnIdo06Kv6yYJ"
      config.access_token_secret = "396fV9KUEm3Znyzs3RLOgb98tgOBqxn4BTZVkCBHub73C"
    end
  end
end
