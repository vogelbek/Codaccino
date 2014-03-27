class Shop < ActiveRecord::Base
  has_many :dynamic_ratings

  mount_uploader :shop_image, ShopImageUploader
# presence: true, uniqueness: true, length: { minimum: 2 }, format: /@/
  validates :name, length: { minimum: 4 }, presence: true

  validates :address, length: { minimum: 8}, presence: true

  validates :site, presence: true

  validates :phone, format: /\d+/, length: {minimum: 10}

  validates :wifi_up, format: /\d+/

  validates :wifi_down, format: /\d+/

  validates :outlet_rating, format: /\d+/

  validates :noise, format: /\d+/



end
