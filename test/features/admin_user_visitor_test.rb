require "test_helper"

feature "Admin User Visitor have different modification and access policies" do

  scenario "A visitor attempts to modify store noise rating" do
    visit root_path
    click_on shops(:shop_2).name
    click_link 'Rate this Shop'
    page.must_have_content 'need to log in to modify that rating'
  end

  scenario 'User attempts to modify store noise rating' do
    sign_in
    rating_entered
    click_on 'Enter your rating!'
    page.must_have_content 'rating saved'
  end

  scenario 'Admin attempts to modify store noise rating' do
    skip "The admin role does not exist"
    sign_in(:admin)
    rating_entered
    page.must_have_content 'rating saved'
  end

end
