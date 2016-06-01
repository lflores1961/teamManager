require 'test_helper'

class MantMenusControllerTest < ActionController::TestCase

  test "should get menuMant" do
    get :menuMant
    assert_response :success
  end

end
