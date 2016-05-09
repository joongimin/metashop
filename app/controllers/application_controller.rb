class ApplicationController < ActionController::Base
  class << self
    def authenticate(args={})
      http_basic_authenticate_with(args.merge(
        name: Rails.application.secrets.username,
        password: Rails.application.secrets.password,
      ))
    end
  end

  protect_from_forgery(with: (Rails.env.test? ? :exception : :null_session))

  before_action :load_main_navs

  private

  def load_main_navs
    @main_navs = {
      home: {title: 'Home', path: root_path},
      admin: {title: 'Admin', path: admin_path},
      about: {title: 'About', path: about_path}
    }
  end
  attr_reader :main_navs
  helper_method :main_navs

  def active_main_nav
    @active_main_nav || :home
  end
  helper_method :active_main_nav

  def mobile?
    browser.device.mobile?
  end
  helper_method :mobile?
end
