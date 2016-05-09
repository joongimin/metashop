class BrandLinksController < ApplicationController
  authenticate

  before_action :load_brand

  def index
    load_brand_links
  end

  def new
    build_brand_link
  end

  def edit
    load_brand_link
  end

  def create
    build_brand_link
    if brand_link.save
      redirect_to brand_brand_links_path(brand_id: brand.id), notice: 'Brand link was successfully created.'
    else
      render :new
    end
  end

  def update
    load_brand_link
    build_brand_link
    if brand_link.save
      redirect_to edit_brand_brand_link_path(@brand_link, brand_id: brand.id), notice: 'Brand link was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    load_brand_link
    brand_link.destroy
    redirect_to brand_brand_links_path(brand_id: brand.id), notice: 'Brand link was successfully destroyed.'
  end

  private

  def load_brand_links
    @brand_links = brand_link_scope.all
  end
  attr_reader :brand_links
  helper_method :brand_links

  def load_brand_link
    @brand_link = brand_link_scope.find(params[:id])
  end
  attr_reader :brand_link
  helper_method :brand_link

  def build_brand_link
    @brand_link ||= brand_link_scope.build
    @brand_link.attributes = brand_link_params
  end

  def brand_link_scope
    brand.brand_links
  end

  def brand_link_params
    result = params[:brand_link] || {}
    result = result.permit(:name, :url) if result.present?
    result
  end

  def load_brand
    @brand = Brand.find(params[:brand_id])
  end
  attr_reader :brand
  helper_method :brand
end
