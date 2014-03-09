class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :site
      t.string :phone
      t.integer :wifi_up
      t.integer :wifi_down
      t.integer :outlet_rating
      t.string :hrs_wkday
      t.string :hrs_saturday
      t.string :hrs_sunday

      t.timestamps
    end
  end
end
