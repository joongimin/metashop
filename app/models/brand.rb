class Brand < ActiveRecord::Base
  include DeviceUrl

  has_many :brand_links, inverse_of: :brand, dependent: :destroy

  validates :name, presence: true
end
