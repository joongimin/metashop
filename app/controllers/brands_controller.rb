class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  # GET /brands
  def index
    load_brands
  end

  # GET /brands/1
  def show
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to brands_path, notice: 'Brand was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /brands/1
  def update
    if @brand.update(brand_params)
      redirect_to edit_brand_path(brand), notice: 'Brand was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
    redirect_to brands_url, notice: 'Brand was successfully destroyed.'
  end

  private

  def load_brands
    @brands = Brand.all
  end
  attr_reader :brands
  helper_method :brands

  def set_brand
    @brand = Brand.find(params[:id])
  end
  attr_reader :brand
  helper_method :brand

  # Only allow a trusted parameter "white list" through.
  def brand_params
    params.require(:brand).permit(:name, :url)
  end
end
