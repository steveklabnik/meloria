require "test_helper"

class ShopTest < ActiveSupport::TestCase
  test "name is required" do
    shop = Shop.new

    assert !shop.save, "Saved the shop without a name"
  end
end
