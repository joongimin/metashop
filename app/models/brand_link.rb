class BrandLink < ActiveRecord::Base
  include DeviceUrl

  belongs_to :brand, inverse_of: :brand_links

  validates :name, presence: true
  validates :url, presence: true
end
