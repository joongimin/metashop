class ApplicationController < ActionController::Base
  protect_from_forgery(with: (Rails.env.test? ? :exception : :null_session))
end
