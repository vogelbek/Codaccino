class AddNoiseToShops < ActiveRecord::Migration
  def change
    add_column :shops, :noise, :integer
  end
end
