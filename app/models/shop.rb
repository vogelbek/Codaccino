class Shop < ActiveRecord::Base
<<<<<<< HEAD
  mount_uploader :shop_image, ShopImageUploader
# presence: true, uniqueness: true, length: { minimum: 2 }, format: /@/
  validates :name, length: { minimum: 4 }, uniqueness: true , presence: true

  validates :address, length: { minimum: 8}, uniqueness: true , presence: true

  validates :site, exclusion: { in: %w(< > )}


  # validates :phone

  # validates :wifi_up

  # validates :wifi_down

  # validates :outlet_rating

  # validates :noise

  # validates :hrs_wkday

  # validates :hrs_saturday

  # validates :hrs_sunday

end
