require "test_helper"

feature "AdminSignIn" do
  scenario "Able to sign into application" do
    skip "Waiting for the correct controller and model to be added"
    visit admin_session_path
    fill_in "Email", with: admins(:login_info).email
    fill_in "Password", with: 'Target1234'
    save_and_open_page
    click_on "Sign in"
    page.must_include "Sign in"
  end
end
