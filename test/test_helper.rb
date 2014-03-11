ENV["RAILS_ENV"] = "test"
require 'simplecov'
SimpleCov.start 'rails'
puts "required simplecov"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"

class ActiveSupport::TestCase

  fixtures :all

    def sign_in (admin = :login_info)
      visit new_admin_session_path
      fill_in "Email", with: admins(admin).email
      fill_in "Password",with: 'Target1234'
      click_on "Sign in"
    end

end

