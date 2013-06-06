require 'test_helper'

class SignUpTest < Capybara::Rails::TestCase
  test "I can sign up" do
    visit '/users/new'

    fill_in "Email", with: "user@example.com"
    fill_in "user[password]", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    assert page.has_content?("You have signed up successfully.")
  end
end
