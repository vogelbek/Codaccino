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
  scenario 'Root path must index coffeeshops' do
    visit root_path
    page.must_have_content shops(:shop_1).name
    page.must_have_content shops(:shop_2).name
  end
  scenario 'Shops index should have key coffeeshop info' do
    visit shops_path
    page.must_have_content shops(:shop_1).name
    page.must_have_content shops(:shop_1).address
    page.must_have_content shops(:shop_1).wifi_up
    page.must_have_content shops(:shop_1).wifi_down
    page.must_have_content shops(:shop_1).outlet_rating
  end
  scenario 'Click shop name to see show page' do
    visit shops_path
    click_on shops(:shop_2).name
    page.must_have_content shops(:shop_2).address
    assert current_path == shop_path(shops(:shop_2))
  end
end
