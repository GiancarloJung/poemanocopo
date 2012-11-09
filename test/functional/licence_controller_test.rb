require 'test_helper'

class LicenceControllerTest < ActionController::TestCase
  test "should get licence" do
    get :licence
    assert_response :success
  end

end
