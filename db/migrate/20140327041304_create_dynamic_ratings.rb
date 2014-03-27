class CreateDynamicRatings < ActiveRecord::Migration
  def change
    create_table :dynamic_ratings do |t|
      t.decimal :wifi_up
      t.decimal :wifi_down
      t.integer :noise

      t.timestamps
      t.integer :shop_id
      t.integer :admin_id
    end
  end
end
