require "test_helper"

class WelcomeControllerTest < ActionController::TestCase
  test "The home page exists" do
    get :index
    assert_response :success
  end
end
