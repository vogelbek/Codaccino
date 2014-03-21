require 'test_helper'

feature 'ShopCreateReadUpdateDelete' do
    scenario 'Adding a coffeeshop' do
        visit new_shop_path
        sign_in
        page.must_have_content 'Where are you today?'
        fill_in 'Name', with: shops(:shop_1).name
        fill_in 'Address', with: shops(:shop_1).address
        fill_in 'Site', with: shops(:shop_1).site
        fill_in 'Phone', with: shops(:shop_1).phone
        fill_in 'Wifi up', with: shops(:shop_1).wifi_up
        fill_in 'Wifi down', with: shops(:shop_1).wifi_down
        fill_in 'Outlet rating', with: shops(:shop_1).noise
        fill_in 'Noise', with: shops(:shop_1).noise
        fill_in 'Hrs wkday', with: shops(:shop_1).hrs_wkday
        fill_in 'Hrs saturday', with: shops(:shop_1).hrs_saturday
        fill_in 'Hrs sunday', with: shops(:shop_1).hrs_sunday
        click_on 'Commit the Coffeeshop'

        page.must_have_content "data saved in the datebase bro"
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
        page.must_have_content "Wifi Up: #{shops(:shop_1).wifi_up}"
        page.must_have_content "Wifi Down: #{shops(:shop_1).wifi_down}"
        page.must_have_content "Power: #{shops(:shop_1).outlet_rating}"
        page.must_have_content "Noise: #{shops(:shop_1).noise}"
    end
    scenario 'Click shop name to see show page' do
        visit shops_path
        click_on shops(:shop_2).name
        page.must_have_content shops(:shop_2).address
        assert current_path == shop_path(shops(:shop_2))
    end
    scenario 'The show for shops should have every field' do
        visit root_path
        click_on shops(:shop_3).name
        page.must_have_content shops(:shop_3).name
        page.must_have_content shops(:shop_3).address
        page.must_have_content "Website"
        page.must_have_content shops(:shop_3).phone
        page.must_have_content "Wifi Up: #{shops(:shop_3).wifi_up}"
        page.must_have_content "Wifi Down: #{shops(:shop_3).wifi_down}"
        page.must_have_content "Power: #{shops(:shop_3).outlet_rating}"
        page.must_have_content "Noise: #{shops(:shop_3).noise}"
        page.must_have_content shops(:shop_3).hrs_wkday
        page.must_have_content shops(:shop_3).hrs_saturday
        page.must_have_content shops(:shop_3).hrs_sunday
    end


    scenario 'After login admin can edit shop information' do
        visit  root_path
        click_on 'Log In'
        sign_in
        click_on shops(:shop_3).name
        first(:link, 'edit').click
        fill_in 'Name', with: shops(:shop_6).name
        fill_in 'Hrs wkday', with: shops(:shop_6).hrs_wkday
        click_on 'Commit the Coffeeshop'
        page.must_have_content shops(:shop_6).name
        page.must_have_content shops(:shop_6).hrs_wkday
        page.must_have_content "You've updated the coffeeshop info!"

    end

    scenario 'After login admin can edit shop information' do
        visit root_path
        click_on 'Log In'
        sign_in
        click_on shops(:shop_3).name
        first(:link, 'delete').click
        page.must_have_content "Good riddens... We hope!"

    end

    scenario 'Sort shops by best wifi_up speed' do
        visit root_path
        click_link 'menu'
        click_on 'Wifi Up'
        page.text.must_match(/#{shops(:shop_5).name}.*#{shops(:shop_1).name}/)
    end

end
