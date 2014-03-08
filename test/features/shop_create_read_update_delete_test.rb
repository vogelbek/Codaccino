require 'test_helper'

feature 'ShopCreateReadUpdateDelete' do
  scenario 'Adding a coffeeshop' do
    visit new_shop_path
    page.must_have_content 'Where are you today?'
    fill_in 'Name', with: shops(:shop_1).name
    fill_in 'Address', with: shops(:shop_1).address
    fill_in 'Site', with: shops(:shop_1).site
    fill_in 'Phone', with: shops(:shop_1).phone
    fill_in 'Wifi up', with: 20
    fill_in 'Wifi down', with: 11
    fill_in 'Outlet rating', with: 2
    fill_in 'Hrs wkday', with: shops(:shop_1).hrs_wkday
    fill_in 'Hrs saturday', with: shops(:shop_1).hrs_saturday
    fill_in 'Hrs sunday', with: shops(:shop_1).hrs_sunday
    click_on 'Commit the Coffeeshop'
    page.must_have_content 'data saved'
  end

end
