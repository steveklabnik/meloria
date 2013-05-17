require "test_helper"

class ShopsControllerTest < ActionController::TestCase
  test "can load the new shop page" do
    get :new
    assert_response :success
    assert_not_nil assigns(:shop)
  end
end
