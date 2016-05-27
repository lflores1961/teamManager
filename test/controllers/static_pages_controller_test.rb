require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "TEAM MANAGER"
  end

  test "should get main_menu" do
    get :main_menu
    assert_response :success
    assert_select "title", "Inicio | #{@base_title}"
  end

end
