require "test_helper"

feature "ViewLandingPage" do
  scenario "A user can learn about codaccino" do
    visit root_path
    page.must_have_content "Codaccino"

  end
  scenario "A visitor should be able to provide their Twitter Handle" do
    visit root_path
    fill_in "Twitter", with: leads(:one).twitter_handle
    click_on "Tweet @ Me!"
    page.must_have_content "We will Tweet @ you #{leads(:one).twitter_handle}"
  end
end
