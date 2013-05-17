require "test_helper"

class CreateShopTest < Capybara::Rails::TestCase
  test "a new shop can be created" do
    visit new_shop_path

    fill_in "Name", with: "A new shop"
    click_button "Create Shop"
    
    assert page.has_content?("A new shop"), "Title was not shown on show page."
  end
end
