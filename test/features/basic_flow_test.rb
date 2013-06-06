require 'test_helper'

class BasicFlowTest < Capybara::Rails::TestCase
  test "The initial flow works" do

    # sign up
    visit '/users/new'

    fill_in "Email", with: "user@example.com"
    fill_in "user[password]", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    assert page.has_content?("You have signed up successfully.")

    # make shop
    assert page.has_content?("Make a new shop")

    fill_in "Name", with: "Artisan"
    click_button "Create Shop"

    # make customer
    click_link "New Customer"
    
    fill_in "Name", with: "Steve Klabnik"
    fill_in "Phone", with: "412 555 5555"
    fill_in "Email", with: "steve@steveklabnik.com"
    fill_in "Location", with: "Santa Monica"
    fill_in "Credit", with: "Infinite. ;)"
    fill_in "Want", with: "Awesome stuff."
    fill_in "Notes", with: "The best <3"
    click_button "Create Customer"

    assert page.has_content?("Customer was successfully created.")
    assert page.has_content?("Steve Klabnik")
    assert page.has_content?("412 555 5555")
    assert page.has_content?("steve@steveklabnik.com")
    assert page.has_content?("Santa Monica")
    assert page.has_content?("Infinite. ;)")
    assert page.has_content?("Awesome stuff.")
    assert page.has_content?("The best <3")
  end
end
