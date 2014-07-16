class ApplicationController < ActionController::Base
  protect_from_forgery

  # "I have a problem when people sign in, because I want to redirect to a special page, but I can't figure it out"
  # SLM: In this case I'm redirecting the user to pins_path (pins#index) after they successfully sign in. You can replace
  # this with any of your routes

  protected
  def after_sign_in_path_for(resource)
    pins_path
  end
end


