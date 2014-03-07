require "test_helper"

feature "ShopCreateReadUpdateDelete" do
  scenario "Adding a coffeeshop" do
    visit new_shop_path
    page.must_have_content "Where are you today?"
    fill_in "Name", with: "Urban City Cafe"
    fill_in "Address", with: "4313 212th St SW Mountlake Terrace, WA 98043"
    fill_in "Site", with: "http://www.urbancitycoffee.com/content/indexretail.html"
    fill_in "Phone", with: "(425) 776-1273"
    fill_in "Wifi up", with: 20
    fill_in "Wifi down", with: 11
    fill_in "Outlet rating", with: 2
    fill_in "Hrs wkday", with: "5:00 am - 10:00 pm"
    fill_in "Hrs saturday", with: "6:00 am - 10:00 pm"
    fill_in "Hrs sunday", with: "6:00 am - 8:00 pm"
    click_on "Commit the Coffeeshop"
  end
end
