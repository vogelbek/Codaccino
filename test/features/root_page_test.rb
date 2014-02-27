require "test_helper"

feature 'root page of the site' do
  scenario 'Home page loads' do
    visit root_path
    page.must_contain 'Welcome aboard'
  end
end
