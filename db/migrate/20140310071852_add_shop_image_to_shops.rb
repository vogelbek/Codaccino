class AddShopImageToShops < ActiveRecord::Migration
  def change
    add_column :shops, :shop_image, :string
  end
end
