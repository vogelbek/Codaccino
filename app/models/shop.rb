class Shop < ActiveRecord::Base
  mount_uploader :shop_image, ShopImageUploader
end
