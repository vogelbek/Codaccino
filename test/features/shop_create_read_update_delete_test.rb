require "test_helper"

feature "ShopCreateReadUpdateDelete" do
  scenario "Adding a coffeeshop" do
    visit new_shop_path
    page.must_have_content "Where are you today?"
    fill_in "Shop Name", with: "Urban City Cafe"
    fill_in "Address", with: "4313 212th St SW Mountlake Terrace, WA 98043"
    fill_in "Site", with: "http://www.urbancitycoffee.com/content/indexretail.html"
    fill_in "Phone", with: "(425) 776-1273"
    fill_in "wifi_up", with: 20
    fill_in "wifi_down", with: 11
    fill_in "outlew_rating", with: 2
    fill_in "hrs_wkday", with: "5:00 am - 10:00 pm"
    fill_in "hrs_saturday", with: "6:00 am - 10:00 pm"
    fill_in "hrs_sunday", with: "6:00 am - 8:00 pm"
    click_on "Submit"
  end
end
