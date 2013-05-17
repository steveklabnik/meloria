require "test_helper"

class ShopTest < ActiveSupport::TestCase
  let(:required_params) do
    {
      name: "A shop.",
    }
  end

  test "name is required" do
    required_params.delete(:name)

    shop = Shop.new(required_params)

    assert !shop.save, "Saved the shop without a name"
  end
end
