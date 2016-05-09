class HomeController < ApplicationController
  authenticate only: :admin

  def index
    @active_main_nav = :home
    load_brands
  end

  def admin
    @active_main_nav = :admin
  end

  def about
    @active_main_nav = :about
  end

  private

  def load_brands
    @brands = Brand.all
  end
  attr_reader :brands
  helper_method :brands
end
