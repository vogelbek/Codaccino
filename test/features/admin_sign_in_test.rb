require "test_helper"

feature "AdminSignIn" do
  scenario "Able to sign into application" do
    visit new_admin_session_path
    fill_in "Email", with: admins(:login_info).email
    fill_in "Password", with: 'Target1234'
    click_button "Sign in"
    # maybe send in message that says sucessfully logged in
  end

  scenario 'Must be logged in to edit store information' do
    visit root_path
    page.wont_have_link "edit"
  end


  scenario 'Must be logged in to delete store information' do
    visit root_path
    page.wont_have_link "delete"
  end

  scenario 'Must be able to sign  out' do
    visit root_path
    sign_in
    click_on 'Logout'
    page.must_have_content 'Signed out successfully'
  end


  # scenario 'must be logged in to able to delete a store' do
    # visit root_path
    # first(:link, 'Login').click
    # sign_in
    # click_on shops(:shop_1).name
    # click_on 'delete'




end
