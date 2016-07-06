require 'test_helper'

class IconsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
