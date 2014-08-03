require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get yamapi" do
    get :yamapi
    assert_response :success
  end

end
