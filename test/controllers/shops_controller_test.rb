require "test_helper"

class ShopsControllerTest < ActionController::TestCase
  test "can load the new shop page" do
    get :new
    assert_response :success
    assert_not_nil assigns(:shop)
  end

  test "can create a shop" do
    assert_difference('Shop.count') do
      post :create, shop: { name: "A new shop" }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "Shows error with invalid shop" do
    assert_no_difference('Shop.count') do
      post :create, shop: {foo: "bar"}
    end

    assert_template :new
  end
end
